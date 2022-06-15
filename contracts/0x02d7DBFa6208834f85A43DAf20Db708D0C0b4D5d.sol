contract main {




// =====================  Runtime code  =====================


#
#  - sub_873cede4(?)
#
mapping of uint8 stor0;

function _fallback() payable {
    revert
}

function allow(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require bool(stor0[address(msg.sender)]) == 1
    stor0[address(arg1)] = 1
}

function sub_55528e8c(?) {
    require bool(stor0[address(msg.sender)]) == 1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require bool(stor0[address(msg.sender)]) == 1
    mem[196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, mem[196 len 28]
    call arg1.mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function sub_b83511a1(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require bool(stor0[address(msg.sender)]) == 1
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_491fd405(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require bool(stor0[address(msg.sender)]) == 1
    require bool(stor0[address(msg.sender)]) == 1
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6ad17234(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg3 and 10000 > -1 / arg1 + arg3:
        revert with 'NH{q', 17
    if arg2 > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
        revert with 'NH{q', 17
    if 9970 * arg2 and arg3 > -1 / 9970 * arg2:
        revert with 'NH{q', 17
    if not (10000 * arg1) + (10000 * arg3):
        revert with 'NH{q', 18
    return (9970 * arg2 * arg3 / (10000 * arg1) + (10000 * arg3))
}

function transferAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require bool(stor0[address(msg.sender)]) == 1
    require bool(stor0[address(arg2)]) == 1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_22159965(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 100).length) + 128 > test266151307() or (32 * ('cd', 100).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[(32 * ('cd', 100).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 > -ext_call.return_data[31 len 1] + 255:
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
        if cd[36] < cd[4]:
            revert with 'NH{q', 17
        if cd[36] - cd[4] and cd[68] > -1 / cd[36] - cd[4]:
            revert with 'NH{q', 17
        return ((cd[36] * cd[68]) - (cd[4] * cd[68]) / 2)
    if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
        if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
            revert with 'NH{q', 17
        if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if cd[36] < cd[4]:
            revert with 'NH{q', 17
        if cd[36] - cd[4] and cd[68] > -1 / cd[36] - cd[4]:
            revert with 'NH{q', 17
        if not 2 * 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
            revert with 'NH{q', 18
        return ((cd[36] * cd[68]) - (cd[4] * cd[68]) / 2 * 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])))
    s = 10
    t = 1
    idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if cd[36] < cd[4]:
        revert with 'NH{q', 17
    if cd[36] - cd[4] and cd[68] > -1 / cd[36] - cd[4]:
        revert with 'NH{q', 17
    if not 2 * t * s:
        revert with 'NH{q', 18
    return ((cd[36] * cd[68]) - (cd[4] * cd[68]) / 2 * t * s)
}

function getPrice(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) == arg2:
        if ext_call.return_data[12 len 20] == arg2:
            revert with 0, 'Target token equal base token'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 > -ext_call.return_data[31 len 1] + 255:
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
            if Mask(112, 0, ext_call.return_data[32]) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(arg2)
            staticcall arg2.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 > -ext_call.return_data[31 len 1] + 255:
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
                if Mask(112, 0, ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                return ext_call.return_data[32] << 144, 
                       ext_call.return_data[0] << 144,
                       Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       address(ext_call.return_data[0])
            if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
                if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
                    revert with 'NH{q', 17
                if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[0]) > -1 / 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                return ext_call.return_data[32] << 144, 
                       ext_call.return_data[0] << 144,
                       Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       address(ext_call.return_data[0])
            s = 10
            idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                s = s * s
                idx = uint255(idx) * 0.5
                continue 
            if 1 > -1 / s:
                revert with 'NH{q', 17
            if s and Mask(112, 0, ext_call.return_data[0]) > -1 / s:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return ext_call.return_data[32] << 144, 
                   ext_call.return_data[0] << 144,
                   Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   address(ext_call.return_data[0])
        if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
            if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
                revert with 'NH{q', 17
            if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(arg2)
            staticcall arg2.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 > -ext_call.return_data[31 len 1] + 255:
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
                if Mask(112, 0, ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                return ext_call.return_data[32] << 144, 
                       ext_call.return_data[0] << 144,
                       10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       address(ext_call.return_data[0])
            if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
                if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
                    revert with 'NH{q', 17
                if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[0]) > -1 / 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                return ext_call.return_data[32] << 144, 
                       ext_call.return_data[0] << 144,
                       10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       address(ext_call.return_data[0])
            s = 10
            t = 1
            idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if t * s and Mask(112, 0, ext_call.return_data[0]) > -1 / t * s:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return ext_call.return_data[32] << 144, 
                   ext_call.return_data[0] << 144,
                   10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   t * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   address(ext_call.return_data[0])
        s = 10
        t = 1
        idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if t * s and Mask(112, 0, ext_call.return_data[32]) > -1 / t * s:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 > -ext_call.return_data[31 len 1] + 255:
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
            if Mask(112, 0, ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return ext_call.return_data[32] << 144, 
                   ext_call.return_data[0] << 144,
                   t * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   address(ext_call.return_data[0])
        if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
            if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
                revert with 'NH{q', 17
            if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[0]) > -1 / 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return ext_call.return_data[32] << 144, 
                   ext_call.return_data[0] << 144,
                   t * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   address(ext_call.return_data[0])
        u = 10
        v = 1
        idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
        while idx > 1:
            if u > -1 / u:
                revert with 'NH{q', 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = v * u
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 'NH{q', 17
        if v * u and Mask(112, 0, ext_call.return_data[0]) > -1 / v * u:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        return ext_call.return_data[32] << 144, 
               ext_call.return_data[0] << 144,
               t * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
               v * u * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               address(ext_call.return_data[0])
    if ext_call.return_data[12 len 20] != arg2:
        revert with 0, 'Target token not found in the pool'
    if address(ext_call.return_data[0]) == arg2:
        revert with 0, 'Target token equal base token'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 > -ext_call.return_data[31 len 1] + 255:
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
        if Mask(112, 0, ext_call.return_data[0]) > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 > -ext_call.return_data[31 len 1] + 255:
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
            if Mask(112, 0, ext_call.return_data[32]) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return ext_call.return_data[0] << 144, 
                   ext_call.return_data[32] << 144,
                   Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   address(ext_call.return_data[0])
        if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
            if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
                revert with 'NH{q', 17
            if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return ext_call.return_data[0] << 144, 
                   ext_call.return_data[32] << 144,
                   Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   address(ext_call.return_data[0])
        s = 10
        t = 1
        idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if t * s and Mask(112, 0, ext_call.return_data[32]) > -1 / t * s:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ext_call.return_data[0] << 144, 
               ext_call.return_data[32] << 144,
               Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               t * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
               address(ext_call.return_data[0])
    if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
        if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
            revert with 'NH{q', 17
        if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[0]) > -1 / 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 > -ext_call.return_data[31 len 1] + 255:
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
            if Mask(112, 0, ext_call.return_data[32]) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return ext_call.return_data[0] << 144, 
                   ext_call.return_data[32] << 144,
                   10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   address(ext_call.return_data[0])
        if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
            if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
                revert with 'NH{q', 17
            if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return ext_call.return_data[0] << 144, 
                   ext_call.return_data[32] << 144,
                   10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   address(ext_call.return_data[0])
        s = 10
        t = 1
        idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if t * s and Mask(112, 0, ext_call.return_data[32]) > -1 / t * s:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ext_call.return_data[0] << 144, 
               ext_call.return_data[32] << 144,
               10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               t * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
               address(ext_call.return_data[0])
    s = 10
    t = 1
    idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if t * s and Mask(112, 0, ext_call.return_data[0]) > -1 / t * s:
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 18
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 > -ext_call.return_data[31 len 1] + 255:
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[31 len 1] + 18) < uint8(ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
        if Mask(112, 0, ext_call.return_data[32]) > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ext_call.return_data[0] << 144, 
               ext_call.return_data[32] << 144,
               t * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
               address(ext_call.return_data[0])
    if bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) < 32)):
        if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) > -1:
            revert with 'NH{q', 17
        if 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])) and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0])):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ext_call.return_data[0] << 144, 
               ext_call.return_data[32] << 144,
               t * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               10^uint8(uint8(uint8(ext_call.return_data[0]) + 18) - uint8(ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
               address(ext_call.return_data[0])
    u = 10
    v = 1
    idx = uint8(uint8(ext_call.return_data[31 len 1] + 18) - uint8(ext_call.return_data[0]))
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if v * u and Mask(112, 0, ext_call.return_data[32]) > -1 / v * u:
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    return ext_call.return_data[0] << 144, 
           ext_call.return_data[32] << 144,
           t * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
           v * u * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
           address(ext_call.return_data[0])
}



}
