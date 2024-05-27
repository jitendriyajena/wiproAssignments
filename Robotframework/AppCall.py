from AppOne import AppOne

class AppCall:
    def __init__(self):
        self.appone = AppOne()

    def bank(self, debit, credit):
        return self.appone.bank(debit, credit)

    def stock(self, rcp, iss):
        return self.appone.stock(rcp, iss)

    def get_current_result(self):
        return self.appone.getresult()