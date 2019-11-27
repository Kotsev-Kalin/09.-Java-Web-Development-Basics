package panda.domain.model.binding;

public class PackageCreateBindingModel {
    private String description;
    private Double weight;
    private String shippingAddress;
    private String recipient;

    public PackageCreateBindingModel() {
    }

    public PackageCreateBindingModel(String description, Double weight, String shippingAddress, String recipient) {
        this.description = description;
        this.weight = weight;
        this.shippingAddress = shippingAddress;
        this.recipient = recipient;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getRecipient() {
        return recipient;
    }

    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }
}
