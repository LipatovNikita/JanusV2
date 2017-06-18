package topprogersgroup.service;


import topprogersgroup.entity.VeterinaryCertificate;
import topprogersgroup.entity.VeterinaryDocument;

import java.util.List;

public interface VeterinaryCertificateService extends BaseService<VeterinaryCertificate> {
    VeterinaryCertificate getVeterinaryCertificateListByVeterinaryDocument(VeterinaryDocument veterinaryDocument);
    List<VeterinaryCertificate> getVeterinaryCertificateList();
}
