let nextId = 1;


@Observed
export class Person {
  id: number;
  name: string;
  phone: string;
  isStar: boolean = false;

  constructor(name:string, phone:string) {
    this.id = nextId++;
    this.name = name;
    this.phone = phone;
  }
}