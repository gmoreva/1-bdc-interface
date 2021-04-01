<template>
  <div class="container">
    <div>
      <Logo/>
      <button @click="getInfo('/get-increment')">Get From public service</button>
      <button @click="getInfo('/get-increment-from-service')">Get From backend service</button>
      {{ result }}
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data () {
    return {
      result: null
    }
  },
  methods: {
    async getInfo (url) {
      const { data } = await axios(process.env.serviceUrl + url)
      this.result = data
    }
  }
}
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand',
  'Source Sans Pro',
  -apple-system,
  BlinkMacSystemFont,
  'Segoe UI',
  Roboto,
  'Helvetica Neue',
  Arial,
  sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
