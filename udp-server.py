#
# @file udp-server.py
#
# @description Simple Calculator Server
# Project Edge
# Copyright (C) 2016-17  Deutsche Telekom Capital Partners Strategic Advisory LLC
#
from calculator_common import SupportedFunction, CalculatorServiceUDP, addition, subtraction, multiplication, division


#Supported function map
FUNCTION_MAP = {
    '1': SupportedFunction(1, 'Addition', '+', addition),
    '2': SupportedFunction(2, 'Subtraction', '-', subtraction),
    '3': SupportedFunction(3, 'Multiplication', '*', multiplication),
    '4': SupportedFunction(4, 'Division', '/', division)
    }

calculator_svc = CalculatorServiceUDP('0.0.0.0', 10000, FUNCTION_MAP)
calculator_svc.serve()
