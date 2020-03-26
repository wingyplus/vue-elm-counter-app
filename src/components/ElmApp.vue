<template>
  <pre ref="__elm_app">
  </pre>
</template>

<script>
export default {
  props: ["app"],
  mounted() {
    this.app.init({
      node: this.$refs.__elm_app
    })
  }
}
</script>
