contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
array of struct stor2;
array of struct stor3;
array of struct stor4;
array of struct stor5;
uint256 sub_813ef1ba;

function sub_813ef1ba(?) payable {
    return sub_813ef1ba
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[stor0] = 0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_658fe235(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and sub_813ef1ba > -1 / arg1:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    mem[96] = stor5.length
    if not stor5.length:
        mem[64] = (32 * stor5.length) + (32 * stor4.length) + 160
        mem[(32 * stor5.length) + 128] = stor4.length
        if not stor4.length:
            if stor4.length < 2:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            if stor4.length < 1:
                revert with 'NH{q', 17
            if stor5.length != stor4.length - 1:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            idx = 0
            s = arg1 * sub_813ef1ba / arg2
            while idx < stor5.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _27 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor5.length) + 128]:
                    revert with 'NH{q', 50
                _30 = mem[(32 * idx) + (32 * stor5.length) + 160]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[(32 * stor5.length) + 128]:
                    revert with 'NH{q', 50
                _33 = mem[(32 * idx + 1) + (32 * stor5.length) + 160]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = address(_30)
                mem[mem[64] + 68] = address(_33)
                require ext_code.size(address(_27))
                staticcall address(_27).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                        gas gas_remaining wei
                       args s, address(_30), address(_33)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _36 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_36] == mem[_36]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_36]
                continue 
            return ((arg1 * sub_813ef1ba / arg2) + (_37 * stor5.length))
        mem[0] = 4
        mem[(32 * stor5.length) + 160] = address(stor4.field_0)
        idx = (32 * stor5.length) + 160
        s = 0
        while (32 * stor5.length) + (32 * stor4.length) + 128 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor4.length < 2:
            revert with 0, 'BOGRouterV2: INVALID_PATH'
        if stor4.length < 1:
            revert with 'NH{q', 17
        if stor5.length != stor4.length - 1:
            revert with 0, 'BOGRouterV2: INVALID_PATH'
        idx = 0
        s = arg1 * sub_813ef1ba / arg2
        while idx < stor5.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _84 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * stor5.length) + 128]:
                revert with 'NH{q', 50
            _89 = mem[(32 * idx) + (32 * stor5.length) + 160]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[(32 * stor5.length) + 128]:
                revert with 'NH{q', 50
            _96 = mem[(32 * idx + 1) + (32 * stor5.length) + 160]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_89)
            mem[mem[64] + 68] = address(_96)
            require ext_code.size(address(_84))
            staticcall address(_84).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                    gas gas_remaining wei
                   args s, address(_89), address(_96)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_102] == mem[_102]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_102]
            continue 
        return ((arg1 * sub_813ef1ba / arg2) + (_104 * stor5.length))
    mem[0] = 5
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = (32 * stor5.length) + (32 * stor4.length) + 160
    mem[(32 * stor5.length) + 128] = stor4.length
    if not stor4.length:
        if stor4.length < 2:
            revert with 0, 'BOGRouterV2: INVALID_PATH'
        if stor4.length < 1:
            revert with 'NH{q', 17
        if stor5.length != stor4.length - 1:
            revert with 0, 'BOGRouterV2: INVALID_PATH'
        idx = 0
        s = arg1 * sub_813ef1ba / arg2
        while idx < stor5.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _86 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * stor5.length) + 128]:
                revert with 'NH{q', 50
            _91 = mem[(32 * idx) + (32 * stor5.length) + 160]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[(32 * stor5.length) + 128]:
                revert with 'NH{q', 50
            _98 = mem[(32 * idx + 1) + (32 * stor5.length) + 160]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_91)
            mem[mem[64] + 68] = address(_98)
            require ext_code.size(address(_86))
            staticcall address(_86).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                    gas gas_remaining wei
                   args s, address(_91), address(_98)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_103] == mem[_103]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_103]
            continue 
        return ((arg1 * sub_813ef1ba / arg2) + (_105 * stor5.length))
    mem[0] = 4
    mem[(32 * stor5.length) + 160] = address(stor4.field_0)
    idx = (32 * stor5.length) + 160
    s = 0
    while (32 * stor5.length) + (32 * stor4.length) + 128 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor4.length < 2:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    if stor4.length < 1:
        revert with 'NH{q', 17
    if stor5.length != stor4.length - 1:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    idx = 0
    s = arg1 * sub_813ef1ba / arg2
    while idx < stor5.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _128 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * stor5.length) + 128]:
            revert with 'NH{q', 50
        _131 = mem[(32 * idx) + (32 * stor5.length) + 160]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[(32 * stor5.length) + 128]:
            revert with 'NH{q', 50
        _134 = mem[(32 * idx + 1) + (32 * stor5.length) + 160]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_131)
        mem[mem[64] + 68] = address(_134)
        require ext_code.size(address(_128))
        staticcall address(_128).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args s, address(_131), address(_134)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_137] == mem[_137]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_137]
        continue 
    return ((arg1 * sub_813ef1ba / arg2) + (_138 * stor5.length))
}

function sub_98eac88b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and sub_813ef1ba > -1 / arg1:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    mem[96] = stor3.length
    if not stor3.length:
        mem[64] = (32 * stor3.length) + (32 * stor2.length) + 160
        mem[(32 * stor3.length) + 128] = stor2.length
        if not stor2.length:
            if stor2.length < 2:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            if stor2.length < 1:
                revert with 'NH{q', 17
            if stor3.length != stor2.length - 1:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            idx = 0
            s = arg1 * sub_813ef1ba / arg2
            while idx < stor3.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _27 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor3.length) + 128]:
                    revert with 'NH{q', 50
                _30 = mem[(32 * idx) + (32 * stor3.length) + 160]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[(32 * stor3.length) + 128]:
                    revert with 'NH{q', 50
                _33 = mem[(32 * idx + 1) + (32 * stor3.length) + 160]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = address(_30)
                mem[mem[64] + 68] = address(_33)
                require ext_code.size(address(_27))
                staticcall address(_27).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                        gas gas_remaining wei
                       args s, address(_30), address(_33)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _36 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_36] == mem[_36]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_36]
                continue 
            return ((arg1 * sub_813ef1ba / arg2) + (_37 * stor3.length))
        mem[0] = 2
        mem[(32 * stor3.length) + 160] = address(stor2.field_0)
        idx = (32 * stor3.length) + 160
        s = 0
        while (32 * stor3.length) + (32 * stor2.length) + 128 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor2.length < 2:
            revert with 0, 'BOGRouterV2: INVALID_PATH'
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor3.length != stor2.length - 1:
            revert with 0, 'BOGRouterV2: INVALID_PATH'
        idx = 0
        s = arg1 * sub_813ef1ba / arg2
        while idx < stor3.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _84 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * stor3.length) + 128]:
                revert with 'NH{q', 50
            _89 = mem[(32 * idx) + (32 * stor3.length) + 160]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[(32 * stor3.length) + 128]:
                revert with 'NH{q', 50
            _96 = mem[(32 * idx + 1) + (32 * stor3.length) + 160]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_89)
            mem[mem[64] + 68] = address(_96)
            require ext_code.size(address(_84))
            staticcall address(_84).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                    gas gas_remaining wei
                   args s, address(_89), address(_96)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_102] == mem[_102]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_102]
            continue 
        return ((arg1 * sub_813ef1ba / arg2) + (_104 * stor3.length))
    mem[0] = 3
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = (32 * stor3.length) + (32 * stor2.length) + 160
    mem[(32 * stor3.length) + 128] = stor2.length
    if not stor2.length:
        if stor2.length < 2:
            revert with 0, 'BOGRouterV2: INVALID_PATH'
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor3.length != stor2.length - 1:
            revert with 0, 'BOGRouterV2: INVALID_PATH'
        idx = 0
        s = arg1 * sub_813ef1ba / arg2
        while idx < stor3.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _86 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * stor3.length) + 128]:
                revert with 'NH{q', 50
            _91 = mem[(32 * idx) + (32 * stor3.length) + 160]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[(32 * stor3.length) + 128]:
                revert with 'NH{q', 50
            _98 = mem[(32 * idx + 1) + (32 * stor3.length) + 160]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = address(_91)
            mem[mem[64] + 68] = address(_98)
            require ext_code.size(address(_86))
            staticcall address(_86).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                    gas gas_remaining wei
                   args s, address(_91), address(_98)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_103] == mem[_103]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_103]
            continue 
        return ((arg1 * sub_813ef1ba / arg2) + (_105 * stor3.length))
    mem[0] = 2
    mem[(32 * stor3.length) + 160] = address(stor2.field_0)
    idx = (32 * stor3.length) + 160
    s = 0
    while (32 * stor3.length) + (32 * stor2.length) + 128 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor2.length < 2:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    if stor2.length < 1:
        revert with 'NH{q', 17
    if stor3.length != stor2.length - 1:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    idx = 0
    s = arg1 * sub_813ef1ba / arg2
    while idx < stor3.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _128 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * stor3.length) + 128]:
            revert with 'NH{q', 50
        _131 = mem[(32 * idx) + (32 * stor3.length) + 160]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[(32 * stor3.length) + 128]:
            revert with 'NH{q', 50
        _134 = mem[(32 * idx + 1) + (32 * stor3.length) + 160]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_131)
        mem[mem[64] + 68] = address(_134)
        require ext_code.size(address(_128))
        staticcall address(_128).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args s, address(_131), address(_134)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_137] == mem[_137]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_137]
        continue 
    return ((arg1 * sub_813ef1ba / arg2) + (_138 * stor3.length))
}



}
