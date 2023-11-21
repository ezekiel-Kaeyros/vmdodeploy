import { User } from "./user.model";

export interface Course {
    id?: number | string;
    title: string;
    description: string;
    link: string;
    author?: User | string;
    createdAt?: Date;
    editedAt?: Date;
}
