<template>
  <div class="login-container">
    <vue-particles
      color="#409EFF"
      :particleOpacity="0.7"
      :particlesNumber="80"
      shapeType="circle"
      :particleSize="4"
      linesColor="#409EFF"
      :linesWidth="1"
      :lineLinked="true"
      :lineOpacity="0.4"
      :linesDistance="150"
      :moveSpeed="3"
      :hoverEffect="true"
      hoverMode="grab"
      :clickEffect="true"
      clickMode="push"
    >   </vue-particles>
    <el-form ref="form" :model="form" label-width="80px" class="login-form" labelPosition='left'>
      <h2 class="login-title">实验室排课系统</h2>
      <el-form-item label="手机/邮箱">
        <el-input v-model="form.username"></el-input>
      </el-form-item>
      <el-form-item label="密码">
        <el-input type="password" v-model="form.password"></el-input>
      </el-form-item>

      <el-form-item>
        <el-button type="primary" @click="onLogin">登录</el-button>
        <el-button type="primary" @click="onRegister">注册</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data () {
    return {
      userInfo: {
        username: ''
      },
      form: {
        username: '',
        password: ''
      }
    }
  },
  methods: {
    onLogin () {
      const _this = this
      if (this.form.username === '' || this.form.password === '') {
        alert('账号或密码不能为空')
      } else {
        if (
          this.form.username === 'admin' &&
          this.form.password === 'admin'
        ) {
          // 将用户token保存到vuex中
          _this.userToken = this.uuid()
          console.log(this.form.username)
          // this.userInfo.username = this.form.username
          const userInfo = {
            username: this.form.username,
            password: this.form.password,
            icon: 'data'
          }
          _this.$store.commit('setUserInfo', userInfo)
          _this.$store.commit('settoken', _this.userToken)
          _this.$router.push('/main')
          alert('登陆成功')
        } else {
          alert('用户名/密码错误，请重新登陆')
        }
      }
    },
    onRegister () {
      this.$router.push('/register')
    },
    // 获取uuid
    uuid () {
      var s = []
      var hexDigits = '0123456789abcdef'
      for (var i = 0; i < 36; i++) {
        s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1)
      }
      s[14] = '4'
      s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1)
      s[8] = s[13] = s[18] = s[23] = '-'
      var uuid = s.join('')
      return uuid
    }
  },
  created () {
    const that = this
    document.onkeydown = function (e) {
      e = window.event || e
      if (that.$route.path === '/login' && (e.code === 'Enter' || e.code === 'enter')) { // 验证在登录界面和按得键是回车键enter
        that.onLogin('form') // 登录函数
      }
    }
  },
  handleSubmit () {
    this.$refs.ruleForm.validate((valid) => {
      if (valid) {
        const _this = this
        axios.get('http://localhost:12010/login', { params: _this.ruleForm }).then(function (response) {
          if (response.data != null) {
            localStorage.setItem('access-admin', JSON.stringify(response.data))
            _this.$router.replace({ path: '/' })
          }
        })
      } else {
        console.log('error submit!')
        return false
      }
    })
  }
}

</script>

<style>
#particles-js {
  width: 100%;
  height: calc(100% - 100px);
  position: absolute;
  overflow: hidden;
}
.login-form {
  width: 350px;
  margin: 160px auto;
  /* 上下间距160px，左右自动居中*/
  background-color: rgb(255, 255, 255, 0.8);
  /* 透明背景色 */
  padding: 30px;
  border-radius: 20px;
  /* 圆角 */
}

/* 背景 */
.login-container {
  position: absolute;
  width: 100%;
  height: 100%;
  background: #303133;
}

/* 标题 */
.login-title {
  color: #303133;
  text-align: center;
}
</style>
