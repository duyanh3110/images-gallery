<template>
  <div class="ui secondary pointing menu">
    <router-link to="/" class="active item">
      Image Storage
    </router-link>
    <div class="right menu">
      <a href="#" class="ui item" v-if="!isLoggedIn" @click="login">
        Login
      </a>
      <div class="horizontal" v-else>
        <router-link to="/" class="item">
          Galleries
        </router-link>
        <router-link to="/upload" class="item">
          Upload
        </router-link>
        <a class="item" @click="logout">
          Logout
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";

export default {
  name: "AppHeader",
  computed: mapGetters(["isLoggedIn"]),
  methods: mapActions(["login", "logout"])
};
</script>

<style scoped>
.horizontal {
  display: flex;
  flex-direction: row;
}
</style>
