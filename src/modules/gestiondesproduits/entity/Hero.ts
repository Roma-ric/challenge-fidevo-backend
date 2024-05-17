import { Entity, BaseEntity, Column, PrimaryGeneratedColumn, OneToMany, JoinColumn, OneToOne } from "typeorm"
import { Image } from "./Image";

@Entity('Hero')
export class Hero extends BaseEntity{

    @PrimaryGeneratedColumn()
    id: number

    @Column()
    position: number

    @Column()
    categorie: string

    @Column()
    title1: string

    @Column()
    title2: string

    @OneToOne(() => Image)
    @JoinColumn({ name: 'image_id' })
    image: Image;

    @Column()
    useButtonLInk: boolean

    @Column()
    textLink: string

}