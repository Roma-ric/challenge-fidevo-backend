import { Entity, BaseEntity, Column, PrimaryGeneratedColumn, JoinColumn, ManyToOne, OneToOne } from "typeorm"
import { Image } from "./Image";

@Entity('Categorie')
export class Categorie extends BaseEntity{

    @PrimaryGeneratedColumn()
    id: number

    @Column()
    nom: string

    @Column()
    imageUrl: string

    @OneToOne(() => Image)
    @JoinColumn({ name: 'image_id' })
    image: Image;
}
