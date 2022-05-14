contract main {




// =====================  Runtime code  =====================


const sub_4229dbe3(?) = eth.balance(this.address)


uint16 stor0;
address stor0;
address owner; offset 16
mapping of uint8 stor1;
mapping of address tokenList;
mapping of uint256 sub_ba27f50b;
uint256 stor4;
array of address stor5;
array of address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
uint256 stor13;
uint8 stor14;

function owner() {
    return owner
}

function tokenList(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenList[arg1]
}

function sub_ba27f50b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ba27f50b[arg1]
}

function whiteListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function addWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function withdrawAllMoney() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(stor0.field_0) > 65534:
        revert with 'NH{q', 17
    uint16(stor0.field_0) = uint16(uint16(stor0.field_0) + 1)
    if uint16(stor0.field_0) >= 3:
        owner = arg1
}

function sub_4b8eb24c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_ba27f50b[address(arg1)]:
        if stor4 > -2:
            revert with 'NH{q', 17
        stor4++
        sub_ba27f50b[address(arg1)] = stor4
        tokenList[stor4] = address(arg1)
}

function balanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawNFT(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(stor0.field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_13e821df(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if stor8 != address(arg1):
        return (stor8 == address(arg1))
    if stor9 != address(arg2):
        return (stor9 == address(arg2))
    if stor10 != address(arg3):
        return (stor10 == address(arg3))
    return (bool(arg4) == bool(stor14))
}

function sub_946b5793(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if arg1:
    if arg2.length:
        revert with arg2[all]
    revert with 0, 
                32,
                arg3.length,
                arg3[all],
                Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256, 32) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256
}

function sub_30a01c4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        return ext_call.return_data[0]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if not 10^ext_call.return_data[31 len 1]:
            revert with 'NH{q', 18
        return (ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if not s * t:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] / s * t)
}

function sub_f35297cd(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = address(arg2)
    stor12 = address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), test266151307()
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= stor5.length:
        revert with 'NH{q', 50
    address(stor5.field_0) = address(arg2)
    if 1 >= stor5.length:
        revert with 'NH{q', 50
    address(stor5.field_256) = address(arg3)
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    address(stor6.field_0) = address(arg3)
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    address(stor6.field_256) = address(arg2)
    if not sub_ba27f50b[address(arg2)]:
        if stor4 > -2:
            revert with 'NH{q', 17
        stor4++
        sub_ba27f50b[address(arg2)] = stor4
        tokenList[stor4] = address(arg2)
    if not sub_ba27f50b[address(arg3)]:
        if stor4 > -2:
            revert with 'NH{q', 17
        stor4++
        sub_ba27f50b[address(arg3)] = stor4
        tokenList[stor4] = address(arg3)
    stor7 = address(arg1)
    stor8 = address(arg2)
    stor9 = address(arg3)
    stor10 = address(arg4)
    stor14 = uint8(bool(arg5))
}

function sub_f43cf9e6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2 * 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg2 and s * t > -1 / arg2:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        require ext_code.size(arg1)
        if arg2:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor0.field_0), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 'NH{q', 17
            require ext_code.size(arg1)
            if arg2 * 10^ext_call.return_data[31 len 1]:
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), arg2 * 10^uint8(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg2 and s * t > -1 / arg2:
                revert with 'NH{q', 17
            require ext_code.size(arg1)
            if arg2 * s * t:
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), arg2 * s * t
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAllToken() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    while idx <= stor4:
        mem[0] = idx
        mem[32] = 2
        require ext_code.size(tokenList[idx])
        staticcall tokenList[idx].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == mem[_35 + 31 len 1]
        if not mem[_35 + 31 len 1]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _40 = mem[_39]
            if mem[_39]:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _40
                require ext_code.size(tokenList[idx])
                call tokenList[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), _40
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_49] == bool(mem[_49])
        else:
            if bool(bool(mem[_35 + 31 len 1] < 78)) or bool(bool(mem[_35 + 31 len 1] < 32)):
                if False and 10^mem[_35 + 31 len 1] > 0:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _43 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _48 = mem[_43]
                if mem[_43]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _48
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _48
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _55 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_55] == bool(mem[_55])
            else:
                t = 10
                u = 1
                s = mem[_35 + 31 len 1]
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = t * u
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                if False and t * u > 0:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _64 = mem[_63]
                if mem[_63]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _64
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _64
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _67 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_67] == bool(mem[_67])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawAll() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    while idx <= stor4:
        mem[0] = idx
        mem[32] = 2
        require ext_code.size(tokenList[idx])
        staticcall tokenList[idx].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_39] == mem[_39 + 31 len 1]
        if not mem[_39 + 31 len 1]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _46 = mem[_45]
            if mem[_45]:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _46
                require ext_code.size(tokenList[idx])
                call tokenList[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), _46
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _55 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_55] == bool(mem[_55])
        else:
            if bool(bool(mem[_39 + 31 len 1] < 78)) or bool(bool(mem[_39 + 31 len 1] < 32)):
                if False and 10^mem[_39 + 31 len 1] > 0:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _54 = mem[_49]
                if mem[_49]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _54
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _54
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _61 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_61] == bool(mem[_61])
            else:
                t = 10
                u = 1
                s = mem[_39 + 31 len 1]
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = t * u
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                if False and t * u > 0:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _69 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _70 = mem[_69]
                if mem[_69]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _70
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _70
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _73 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_73] == bool(mem[_73])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_e24be30d(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if not stor1[msg.sender]:
        revert with 0, 'white only'
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'empty pool'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'empty pool'
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'balance not enough'
    if stor10 != address(arg3):
        revert with 0, 'invalid task'
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = (4 * ceil32(return_data.size)) + 292
    t = 0
    while idx < stor5.length:
        mem[s] = stor5[t].field_0
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    require ext_code.size(stor7)
    call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=stor5.length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor5.length]), address(this.address), stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 < arg2:
        revert with 0, 'output not enough'
    require ext_code.size(stor12)
    if not stor14:
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args address(stor0.field_0), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args owner
    else:
        call stor12.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7, test266151307()
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = (8 * ceil32(return_data.size)) + 356
        t = 0
        while idx < stor6.length:
            mem[s] = stor6[t].field_0
            idx = idx + 1
            s = s + 32
            t = t + 1
            continue 
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0 / 100000, arg1 / 140000, Array(len=stor6.length, data=mem[(8 * ceil32(return_data.size)) + 356 len 32 * stor6.length]), address(this.address), stor13
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 0 < arg1 / 140000:
            revert with 0, 'output not enough for sell'
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args address(stor0.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args address(stor0.field_0), -0 / 100000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args address(stor0.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 < arg2:
        revert with 0, 'output not enough, fuck project'
}

function sub_e551b351(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg3 and 1 > -1 / arg3:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        if arg3:
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_ba27f50b[address(arg1)]:
                if stor4 > -2:
                    revert with 'NH{q', 17
                stor4++
                sub_ba27f50b[address(arg1)] = stor4
                tokenList[stor4] = address(arg1)
        else:
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(arg1))
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ba27f50b[address(arg1)]:
                    if stor4 > -2:
                        revert with 'NH{q', 17
                    stor4++
                    sub_ba27f50b[address(arg1)] = stor4
                    tokenList[stor4] = address(arg1)
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            if arg3 * 10^ext_call.return_data[31 len 1]:
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, arg3 * 10^uint8(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ba27f50b[address(arg1)]:
                    if stor4 > -2:
                        revert with 'NH{q', 17
                    stor4++
                    sub_ba27f50b[address(arg1)] = stor4
                    tokenList[stor4] = address(arg1)
            else:
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(arg1))
                    call address(arg1).0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg2), this.address, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not sub_ba27f50b[address(arg1)]:
                        if stor4 > -2:
                            revert with 'NH{q', 17
                        stor4++
                        sub_ba27f50b[address(arg1)] = stor4
                        tokenList[stor4] = address(arg1)
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg3 and s * t > -1 / arg3:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            if arg3 * s * t:
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, arg3 * s * t
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ba27f50b[address(arg1)]:
                    if stor4 > -2:
                        revert with 'NH{q', 17
                    stor4++
                    sub_ba27f50b[address(arg1)] = stor4
                    tokenList[stor4] = address(arg1)
            else:
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(arg1))
                    call address(arg1).0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg2), this.address, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not sub_ba27f50b[address(arg1)]:
                        if stor4 > -2:
                            revert with 'NH{q', 17
                        stor4++
                        sub_ba27f50b[address(arg1)] = stor4
                        tokenList[stor4] = address(arg1)
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x946b5793(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4229dbe3(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x853828b6(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8b09832d(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor1[address(arg1)] = 1
                    else:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 1
                        while idx <= stor4:
                            mem[0] = idx
                            mem[32] = 2
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_387] == mem[_387 + 31 len 1]
                            if not mem[_387 + 31 len 1]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _435 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _444 = mem[_435]
                                if mem[_435]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _444
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(stor0.field_0), _444
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _472 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_472] == bool(mem[_472])
                            else:
                                if bool(bool(mem[_387 + 31 len 1] < 78)) or bool(bool(mem[_387 + 31 len 1] < 32)):
                                    if False and 10^mem[_387 + 31 len 1] > 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _455 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _468 = mem[_455]
                                    if mem[_455]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _468
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(stor0.field_0), _468
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _490 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_490] == bool(mem[_490])
                                else:
                                    t = 10
                                    u = 1
                                    s = mem[_387 + 31 len 1]
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 'NH{q', 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 'NH{q', 17
                                    if False and t * u > 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _569 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _572 = mem[_569]
                                    if mem[_569]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _572
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(stor0.field_0), _572
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _582 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_582] == bool(mem[_582])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if eth.balance(this.address):
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x4229dbe3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return eth.balance(this.address)
                    if uint32(call.func_hash) >> 224 != unknown_0x4b8eb24c(?????):
                        require unknown_0x6088e93a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(arg1))
                        call address(arg1).0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, address(stor0.field_0), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not sub_ba27f50b[address(arg1)]:
                            if stor4 > -2:
                                revert with 'NH{q', 17
                            stor4++
                            sub_ba27f50b[address(arg1)] = stor4
                            tokenList[stor4] = address(arg1)
            if unknown_0x14870d2c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint16(stor0.field_0) > 65534:
                        revert with 'NH{q', 17
                    uint16(stor0.field_0) = uint16(uint16(stor0.field_0) + 1)
                    if uint16(stor0.field_0) >= 3:
                        owner = address(arg1)
                require unknown_0x13e821df(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg4 == bool(arg4)
                if stor8 != address(arg1):
                    return (stor8 == address(arg1))
                if stor9 != address(arg2):
                    return (stor9 == address(arg2))
                if stor10 != address(arg3):
                    return (stor10 == address(arg3))
                return (bool(arg4) == bool(stor14))
            if unknown_0x14870d2c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 1
                while idx <= stor4:
                    mem[0] = idx
                    mem[32] = 2
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_385] == mem[_385 + 31 len 1]
                    if not mem[_385 + 31 len 1]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenList[idx])
                        staticcall tokenList[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _434 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _443 = mem[_434]
                        if mem[_434]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _443
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), _443
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _471 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_471] == bool(mem[_471])
                    else:
                        if bool(bool(mem[_385 + 31 len 1] < 78)) or bool(bool(mem[_385 + 31 len 1] < 32)):
                            if False and 10^mem[_385 + 31 len 1] > 0:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _465 = mem[_453]
                            if mem[_453]:
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _465
                                require ext_code.size(tokenList[idx])
                                call tokenList[idx].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(stor0.field_0), _465
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _489 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_489] == bool(mem[_489])
                        else:
                            t = 10
                            u = 1
                            s = mem[_385 + 31 len 1]
                            while s > 1:
                                if t > -1 / t:
                                    revert with 'NH{q', 17
                                if not bool(s):
                                    t = t * t
                                    u = u
                                    s = uint255(s) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                s = uint255(s) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 'NH{q', 17
                            if False and t * u > 0:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _571 = mem[_568]
                            if mem[_568]:
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _571
                                require ext_code.size(tokenList[idx])
                                call tokenList[idx].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(stor0.field_0), _571
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _581 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_581] == bool(mem[_581])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            if unknown_0x1b52b9de(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if eth.balance(this.address):
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require unknown_0x30a01c4e(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                return ext_call.return_data[0]
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 18
                return (ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if not s * t:
                revert with 'NH{q', 18
            return (ext_call.return_data[0] / s * t)
        if unknown_0xdad69c20(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x9ead7222(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x9ead7222(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return tokenList[arg1]
                if uint32(call.func_hash) >> 224 != unknown_0xb99152d0(?????):
                    require unknown_0xba27f50b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_ba27f50b[arg1]
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0x946b5793(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == bool(arg1)
                require arg2 <= test266151307()
                require arg2 + 35 < calldata.size
                if arg2.length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                    revert with 'NH{q', 65
                require arg2 + arg2.length + 36 <= calldata.size
                require arg3 <= test266151307()
                require calldata.size > arg3 + 35
                if arg3.length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(arg3.length)) + 130 < 129 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130 > test266151307():
                    revert with 'NH{q', 65
                require arg3 + arg3.length + 36 <= calldata.size
                if arg1:
                if arg2.length:
                    revert with arg2[all]
                revert with 0, 
                            32,
                            arg3.length,
                            arg3[all],
                            Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256, 32) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256
            require unknown_0x9e281a98(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                require ext_code.size(address(arg1))
                if arg2:
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor0.field_0), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(arg1))
                    if arg2 * 10^ext_call.return_data[31 len 1]:
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor0.field_0), arg2 * 10^uint8(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg2 and s * t > -1 / arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(arg1))
                    if arg2 * s * t:
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor0.field_0), arg2 * s * t
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0xf35297cd(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xf35297cd(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf43cf9e6(?????):
                        require unknown_0xfa0fca84(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor1[arg1])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if arg2 and 1 > -1 / arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(arg1))
                        call address(arg1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(arg1))
                            call address(arg1).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2 * 10^uint8(ext_call.return_data[0])
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            if arg2 and s * t > -1 / arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(arg1))
                            call address(arg1).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2 * s * t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 160
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    require arg5 == bool(arg5)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor11 = address(arg2)
                    stor12 = address(arg3)
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), test266151307()
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= stor5.length:
                        revert with 'NH{q', 50
                    address(stor5.field_0) = address(arg2)
                    if 1 >= stor5.length:
                        revert with 'NH{q', 50
                    address(stor5.field_256) = address(arg3)
                    if 0 >= stor6.length:
                        revert with 'NH{q', 50
                    address(stor6.field_0) = address(arg3)
                    if 1 >= stor6.length:
                        revert with 'NH{q', 50
                    address(stor6.field_256) = address(arg2)
                    if not sub_ba27f50b[address(arg2)]:
                        if stor4 > -2:
                            revert with 'NH{q', 17
                        stor4++
                        sub_ba27f50b[address(arg2)] = stor4
                        tokenList[stor4] = address(arg2)
                    if not sub_ba27f50b[address(arg3)]:
                        if stor4 > -2:
                            revert with 'NH{q', 17
                        stor4++
                        sub_ba27f50b[address(arg3)] = stor4
                        tokenList[stor4] = address(arg3)
                    stor7 = address(arg1)
                    stor8 = address(arg2)
                    stor9 = address(arg3)
                    stor10 = address(arg4)
                    stor14 = uint8(bool(arg5))
            else:
                if unknown_0xdad69c20(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor1[address(arg1)] = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xe24be30d(?????):
                        require unknown_0xe551b351(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg3 and 1 > -1 / arg3:
                                revert with 'NH{q', 17
                            require ext_code.size(address(arg1))
                            if arg3:
                                call address(arg1).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(arg2), this.address, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not sub_ba27f50b[address(arg1)]:
                                    if stor4 > -2:
                                        revert with 'NH{q', 17
                                    stor4++
                                    sub_ba27f50b[address(arg1)] = stor4
                                    tokenList[stor4] = address(arg1)
                            else:
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(arg1))
                                    call address(arg1).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(arg2), this.address, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not sub_ba27f50b[address(arg1)]:
                                        if stor4 > -2:
                                            revert with 'NH{q', 17
                                        stor4++
                                        sub_ba27f50b[address(arg1)] = stor4
                                        tokenList[stor4] = address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(arg1))
                                if arg3 * 10^ext_call.return_data[31 len 1]:
                                    call address(arg1).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(arg2), this.address, arg3 * 10^uint8(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not sub_ba27f50b[address(arg1)]:
                                        if stor4 > -2:
                                            revert with 'NH{q', 17
                                        stor4++
                                        sub_ba27f50b[address(arg1)] = stor4
                                        tokenList[stor4] = address(arg1)
                                else:
                                    staticcall address(arg1).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(address(arg1))
                                        call address(arg1).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(arg2), this.address, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not sub_ba27f50b[address(arg1)]:
                                            if stor4 > -2:
                                                revert with 'NH{q', 17
                                            stor4++
                                            sub_ba27f50b[address(arg1)] = stor4
                                            tokenList[stor4] = address(arg1)
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 'NH{q', 17
                                    if not bool(idx):
                                        s = s * s
                                        t = t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    s = s * s
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 'NH{q', 17
                                if arg3 and s * t > -1 / arg3:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(arg1))
                                if arg3 * s * t:
                                    call address(arg1).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(arg2), this.address, arg3 * s * t
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not sub_ba27f50b[address(arg1)]:
                                        if stor4 > -2:
                                            revert with 'NH{q', 17
                                        stor4++
                                        sub_ba27f50b[address(arg1)] = stor4
                                        tokenList[stor4] = address(arg1)
                                else:
                                    staticcall address(arg1).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(address(arg1))
                                        call address(arg1).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(arg2), this.address, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not sub_ba27f50b[address(arg1)]:
                                            if stor4 > -2:
                                                revert with 'NH{q', 17
                                            stor4++
                                            sub_ba27f50b[address(arg1)] = stor4
                                            tokenList[stor4] = address(arg1)
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg3 == address(arg3)
                        if not stor1[msg.sender]:
                            revert with 0, 'white only'
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'empty pool'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'empty pool'
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > ext_call.return_data[0]:
                            revert with 0, 'balance not enough'
                        if stor10 != address(arg3):
                            revert with 0, 'invalid task'
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 324
                        t = 0
                        while idx < stor5.length:
                            mem[s] = stor5[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        require ext_code.size(stor7)
                        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, arg2, Array(len=stor5.length, data=mem[(4 * ceil32(return_data.size)) + 324 len 32 * stor5.length]), address(this.address), stor13
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 0 < arg2:
                            revert with 0, 'output not enough'
                        require ext_code.size(stor12)
                        if not stor14:
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                        else:
                            call stor12.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor7, test266151307()
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 388
                            t = 0
                            while idx < stor6.length:
                                mem[s] = stor6[t].field_0
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            require ext_code.size(stor7)
                            call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0 / 100000, arg1 / 140000, Array(len=stor6.length, data=mem[(8 * ceil32(return_data.size)) + 388 len 32 * stor6.length]), address(this.address), stor13
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 < arg1 / 140000:
                                revert with 0, 'output not enough for sell'
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor0.field_0)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), -0 / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor0.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 0 < arg2:
                            revert with 0, 'output not enough, fuck project'
}



}
