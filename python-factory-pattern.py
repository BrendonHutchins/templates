class PayPal:
    def pay(self, amount):
        print(f"Paying {amount} via PayPal")

class Crypto:
    def pay(self, amount):
        print(f"Paying {amount} via Crypto")

class Stripe:
    def pay(self, amount):
        print(f"Paying {amount} via Stripe")

PAYMENT_REGISTRY = {
    "stripe": Stripe,
    "paypal": PayPal,
    "crypto": Crypto,
}

class PaymentFactory:
    @staticmethod
    def create(provider):
        payment_class = PAYMENT_REGISTRY.get(provider) # returns class
        if payment_class:
            return payment_class() # object instantiation and return
        raise ValueError(f"Unknown: {provider}")


paypal = PaymentFactory.create("paypal")
paypal.pay(50)
