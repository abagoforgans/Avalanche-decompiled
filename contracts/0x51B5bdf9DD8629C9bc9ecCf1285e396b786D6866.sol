contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor2;
address stor3;
address sharkAddress;
address farmAddress;
address lpAddress;

function lp() payable {
    return lpAddress
}

function farm() payable {
    return farmAddress
}

function shark() payable {
    return sharkAddress
}

function _fallback() payable {
    revert
}

function sub_e10ed399(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(farmAddress)
    staticcall farmAddress.0x3f180538 with:
            gas gas_remaining wei
           args 0, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 100 * ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (0 / ext_call.return_data[0])
    if 100 * ext_call.return_data[0] and stor0 > -1 / 100 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 100 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * ext_call.return_data[0] * stor0 / 100 * ext_call.return_data[0] != stor0:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * ext_call.return_data[0] * stor0 / ext_call.return_data[0])
}

function getData() payable {
    require ext_code.size(sharkAddress)
    staticcall sharkAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(lpAddress)
    staticcall lpAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[18 len 14]:
            revert with 'NH{q', 18
        require ext_code.size(lpAddress)
        staticcall lpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sharkAddress)
        staticcall sharkAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(lpAddress)
            staticcall lpAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(farmAddress)
                staticcall farmAddress.getEmission() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] and 0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if 876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 0 / ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(farmAddress)
            staticcall farmAddress.getEmission() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return ext_call.return_data[0], 
                       0 / Mask(112, 0, ext_call.return_data[0]),
                       0 / ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[0],
                       0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
            if ext_call.return_data[0] and 0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return ext_call.return_data[0], 
                       0 / Mask(112, 0, ext_call.return_data[0]),
                       0 / ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[0],
                       0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
            if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return ext_call.return_data[0], 
                       0 / Mask(112, 0, ext_call.return_data[0]),
                       0 / ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[0],
                       0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
            if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if 876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   0 / Mask(112, 0, ext_call.return_data[0]),
                   0 / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] and 0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(lpAddress)
            staticcall lpAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(farmAddress)
                staticcall farmAddress.getEmission() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] and 0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if 876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 0 / ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(farmAddress)
            staticcall farmAddress.getEmission() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return ext_call.return_data[0], 
                       0 / Mask(112, 0, ext_call.return_data[0]),
                       0 / ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[0],
                       0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
            if ext_call.return_data[0] and 0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return ext_call.return_data[0], 
                       0 / Mask(112, 0, ext_call.return_data[0]),
                       0 / ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[0],
                       0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
            if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return ext_call.return_data[0], 
                       0 / Mask(112, 0, ext_call.return_data[0]),
                       0 / ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[0],
                       0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
            if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if 876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   0 / Mask(112, 0, ext_call.return_data[0]),
                   0 / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 2 > -1 / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(lpAddress)
        staticcall lpAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            require ext_code.size(farmAddress)
            staticcall farmAddress.getEmission() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                if ext_call.return_data[0] and 0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
            revert with 0, 'SafeMath: division by zero'
        if 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(farmAddress)
        staticcall farmAddress.getEmission() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   0 / Mask(112, 0, ext_call.return_data[0]),
                   2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] and 0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            if 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   0 / Mask(112, 0, ext_call.return_data[0]),
                   2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            if 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   0 / Mask(112, 0, ext_call.return_data[0]),
                   2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]
        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return ext_call.return_data[0], 
               0 / Mask(112, 0, ext_call.return_data[0]),
               2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0],
               ext_call.return_data[0],
               876000 * 24 * 3600 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / 2 * ext_call.return_data[0] * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]
    if ext_call.return_data[50 len 14] and stor0 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    if ext_call.return_data[50 len 14] * stor0 / ext_call.return_data[50 len 14] != stor0:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[18 len 14]:
        revert with 'NH{q', 18
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sharkAddress)
    staticcall sharkAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(lpAddress)
        staticcall lpAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(farmAddress)
            staticcall farmAddress.getEmission() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                        if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(farmAddress)
        staticcall farmAddress.getEmission() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
                   0 / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
                   0 / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
                   0 / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
        if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return ext_call.return_data[0], 
               Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
               0 / ext_call.return_data[0] * ext_call.return_data[0],
               ext_call.return_data[0],
               876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0] * ext_call.return_data[0]
    if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(lpAddress)
        staticcall lpAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(farmAddress)
            staticcall farmAddress.getEmission() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                        if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(farmAddress)
        staticcall farmAddress.getEmission() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
                   0 / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
                   0 / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 18
            return ext_call.return_data[0], 
                   Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
                   0 / ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0],
                   0 / 0 / ext_call.return_data[0] * ext_call.return_data[0]
        if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return ext_call.return_data[0], 
               Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
               0 / ext_call.return_data[0] * ext_call.return_data[0],
               ext_call.return_data[0],
               876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 0 / ext_call.return_data[0] * ext_call.return_data[0]
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 2 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        require ext_code.size(farmAddress)
        staticcall farmAddress.getEmission() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                    if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if 876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
        revert with 0, 'SafeMath: division by zero'
    if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(farmAddress)
    staticcall farmAddress.getEmission() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return ext_call.return_data[0], 
               Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
               2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0],
               ext_call.return_data[0],
               0 / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]
    if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return ext_call.return_data[0], 
               Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
               2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0],
               ext_call.return_data[0],
               0 / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 8760 * 24 * 3600 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 8760 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return ext_call.return_data[0], 
               Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
               2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0],
               ext_call.return_data[0],
               0 / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]
    if 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) and 100 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if 876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 8760 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) != 100:
        revert with 0, 'SafeMath: multiplication overflow'
    if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return ext_call.return_data[0], 
           Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]),
           2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0],
           ext_call.return_data[0],
           876000 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * stor0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]
}



}
