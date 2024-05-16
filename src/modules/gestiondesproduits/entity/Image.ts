import { Entity, BaseEntity, Column, PrimaryGeneratedColumn, JoinColumn, ManyToOne } from "typeorm"
import { Produit } from "./Produit";

@Entity('Image')
export class Image extends BaseEntity{

    @PrimaryGeneratedColumn()
    id: number

    @Column()
    nom: string

    @ManyToOne(() => Produit, produit => produit.images)
    @JoinColumn({ name: 'produit_id' })
    produit: Produit;

}
