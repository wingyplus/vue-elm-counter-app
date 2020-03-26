<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <ElmApp :app="app" />
  </div>
</template>

<script>
import ElmApp from './components/ElmApp.vue'
import { Elm } from './Main.elm'

export default {
  name: 'App',
  components: {
    ElmApp
  },
  data() {
    return {
      app: Elm.Main
    }
  },
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
