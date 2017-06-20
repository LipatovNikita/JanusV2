package topprogersgroup.ws.endpoint;


import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;
import topprogersgroup.ws.foreignsystem.ObjectFactory;
import topprogersgroup.ws.foreignsystem.StatusFromForeignSystem;
import topprogersgroup.ws.foreignsystem.VeterinaryCertificate;

import java.util.Random;

@Endpoint
public class ForeignSystemEndpoint {

    @PayloadRoot(namespace = "http://localhost/types/foreignSystem", localPart = "VeterinaryCertificate")
    @ResponsePayload
    public StatusFromForeignSystem setVeterinaryCertificateStatus(@RequestPayload VeterinaryCertificate certificate) {
        ObjectFactory factory = new ObjectFactory();
        StatusFromForeignSystem response = factory.createStatusFromForeignSystem();
        response.setStatus(getRandomStatus());
        return response;
    }

    public String getRandomStatus() {
        Random random = new Random();
        int value = random.nextInt(100);
        if (value < 80) return "OK";
        else if (value >= 80 || value < 95) return "So-so";
        else return "Not OK";
    }
}
