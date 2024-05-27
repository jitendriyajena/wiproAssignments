class AppOne:
    def __init__(self):
        self.result = 0

    def bank(self, debit, credit):
        self.result = int(debit) + int(credit)
        return self.result

    def stock(self, rcp, iss):
        self.result = int(rcp) - int(iss)
        return self.result

    def getresult(self):
        return self.result