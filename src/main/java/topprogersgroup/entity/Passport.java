package topprogersgroup.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "passport")
public class Passport {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private int id;

    @Column(name = "animalType", nullable = false)
    private String animalType;

    @Column(name = "pet_name", nullable = false)
    private String petName;

    //пол
    @Column(name = "gender", nullable = false)
    private boolean gender;

    //порода
    @Column(name = "breed", nullable = false)
    private String breed;

    @Column(name = "color", nullable = false)
    private String color;

    //особые приметы
    @Column(name = "specialFeatures")
    private String specialFeatures;

    @Column(name = "dateOfBirth", nullable = false)
    @Temporal(value=TemporalType.DATE)
    private Date dateOfBirth;

    //потомство
    @Column(name = "offspring")
    private String offspring;

    @OneToOne
    @JoinColumn(name = "owner_id")
    private Owner owner;

    //Иммунизация-Дегельминтизация
    @OneToMany(mappedBy = "passport", cascade = CascadeType.ALL)
    private List<ImmunizationDeworming> immunizationDeworming;

    @Column(name = "castrationSterilization")
    private boolean castrationSterilization;

    @Column(name = "clinic", nullable = false)
    private String clinic;

    @Column(name = "doctor", nullable = false)
    private String doctor;

    @Column(name = "microchipTattoo", nullable = false)
    private boolean microchipTattoo;

    @Column(name = "numberMicrochipTattoo", nullable = false)
    private String numberMicrochipTattoo;

    @Column(name = "dateOfImplantation", nullable = false)
    @Temporal(value=TemporalType.DATE)
    private Date dateOfImplantation;

    @Column(name = "passportPhoto", nullable = false)
    private String passportPhoto;

    @OneToMany(mappedBy = "passport", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Vaccination> vaccination;

    @Transient
    private Pet pet;
}
