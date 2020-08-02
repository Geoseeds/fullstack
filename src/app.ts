import { Vue, Component, Prop } from "vue-property-decorator";

@Component
export default class App extends Vue {
  @Prop() user!: object;

  user = {
    firstName: "Harry",
    lastName: "Manchanda",
  };

  formatName(user) {
    return `${user.firstName} ${user.lastName}`;
  }

  get exclamationMarks(): string {
    return Array(this.enthusiasm + 1).join("!");
  }
}
