contract main {




// =====================  Runtime code  =====================


const sub_4229dbe3(?) = eth.balance(this.address)


uint16 stor0;
address creatorAddress; offset 16
address owner;
mapping of uint8 stor2;
mapping of address tokenList;
mapping of uint256 sub_ba27f50b;
uint256 stor5;
array of address stor6;
array of address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
uint256 stor14;
uint8 stor15;

function creator() {
    return creatorAddress
}

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
    return bool(stor2[arg1])
}

function addWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function removeWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if stor0 > 65534:
        revert with 'NH{q', 17
    stor0 = uint16(stor0 + 1)
    if stor0 >= 2:
        stor0 = 0
        owner = arg1
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

function withdrawAllMoney() {
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_4b8eb24c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not sub_ba27f50b[address(arg1)]:
        if stor5 > -2:
            revert with 'NH{q', 17
        stor5++
        sub_ba27f50b[address(arg1)] = stor5
        tokenList[stor5] = address(arg1)
}

function sub_13e821df(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if stor9 != address(arg1):
        return (stor9 == address(arg1))
    if stor10 != address(arg2):
        return (stor10 == address(arg2))
    if stor11 != address(arg3):
        return (stor11 == address(arg3))
    return (bool(arg4) == bool(stor15))
}

function withdrawNFT(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor12 = address(arg2)
    stor13 = address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), test266151307()
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    address(stor6.field_0) = address(arg2)
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    address(stor6.field_256) = address(arg3)
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    address(stor7.field_0) = address(arg3)
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    address(stor7.field_256) = address(arg2)
    if not sub_ba27f50b[address(arg2)]:
        if stor5 > -2:
            revert with 'NH{q', 17
        stor5++
        sub_ba27f50b[address(arg2)] = stor5
        tokenList[stor5] = address(arg2)
    if not sub_ba27f50b[address(arg3)]:
        if stor5 > -2:
            revert with 'NH{q', 17
        stor5++
        sub_ba27f50b[address(arg3)] = stor5
        tokenList[stor5] = address(arg3)
    stor8 = address(arg1)
    stor9 = address(arg2)
    stor10 = address(arg3)
    stor11 = address(arg4)
    stor15 = uint8(bool(arg5))
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
        if creatorAddress != msg.sender:
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
                args owner, arg2
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
                    args owner, ext_call.return_data[0]
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
                    args owner, arg2 * 10^uint8(ext_call.return_data[0])
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
                        args owner, ext_call.return_data[0]
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
                    args owner, arg2 * s * t
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
                        args owner, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e551b351(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if creatorAddress != msg.sender:
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
                if stor5 > -2:
                    revert with 'NH{q', 17
                stor5++
                sub_ba27f50b[address(arg1)] = stor5
                tokenList[stor5] = address(arg1)
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
                    if stor5 > -2:
                        revert with 'NH{q', 17
                    stor5++
                    sub_ba27f50b[address(arg1)] = stor5
                    tokenList[stor5] = address(arg1)
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
                    if stor5 > -2:
                        revert with 'NH{q', 17
                    stor5++
                    sub_ba27f50b[address(arg1)] = stor5
                    tokenList[stor5] = address(arg1)
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
                        if stor5 > -2:
                            revert with 'NH{q', 17
                        stor5++
                        sub_ba27f50b[address(arg1)] = stor5
                        tokenList[stor5] = address(arg1)
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
                    if stor5 > -2:
                        revert with 'NH{q', 17
                    stor5++
                    sub_ba27f50b[address(arg1)] = stor5
                    tokenList[stor5] = address(arg1)
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
                        if stor5 > -2:
                            revert with 'NH{q', 17
                        stor5++
                        sub_ba27f50b[address(arg1)] = stor5
                        tokenList[stor5] = address(arg1)
}

function withdrawAllToken() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        idx = 1
        while idx <= stor5:
            mem[0] = idx
            mem[32] = 3
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_67] == mem[_67 + 31 len 1]
            if not mem[_67 + 31 len 1]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _75 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _77 = mem[_75]
                if mem[_75]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _77
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _77
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _95 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_95] == bool(mem[_95])
            else:
                if bool(bool(mem[_67 + 31 len 1] < 78)) or bool(bool(mem[_67 + 31 len 1] < 32)):
                    if False and 10^mem[_67 + 31 len 1] > 0:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _83 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _91 = mem[_83]
                    if mem[_83]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _91
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _91
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _107 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_107] == bool(mem[_107])
                else:
                    t = 10
                    u = 1
                    s = mem[_67 + 31 len 1]
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
                    _123 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _125 = mem[_123]
                    if mem[_123]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _125
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _125
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _131 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_131] == bool(mem[_131])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 1
        while idx <= stor5:
            mem[0] = idx
            mem[32] = 3
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68 + 31 len 1]
            if not mem[_68 + 31 len 1]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _76 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _78 = mem[_76]
                if mem[_76]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _78
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _78
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _96 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_96] == bool(mem[_96])
            else:
                if bool(bool(mem[_68 + 31 len 1] < 78)) or bool(bool(mem[_68 + 31 len 1] < 32)):
                    if False and 10^mem[_68 + 31 len 1] > 0:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _85 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _94 = mem[_85]
                    if mem[_85]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _94
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _94
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _108 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_108] == bool(mem[_108])
                else:
                    t = 10
                    u = 1
                    s = mem[_68 + 31 len 1]
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
                    _124 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _126 = mem[_124]
                    if mem[_124]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _126
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _126
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_132] == bool(mem[_132])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function withdrawAll() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        idx = 1
        while idx <= stor5:
            mem[0] = idx
            mem[32] = 3
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_113] == mem[_113 + 31 len 1]
            if not mem[_113 + 31 len 1]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _140 = mem[_137]
                if mem[_137]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _140
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _140
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_167] == bool(mem[_167])
            else:
                if bool(bool(mem[_113 + 31 len 1] < 78)) or bool(bool(mem[_113 + 31 len 1] < 32)):
                    if False and 10^mem[_113 + 31 len 1] > 0:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _149 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _160 = mem[_149]
                    if mem[_149]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _160
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _160
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_185] == bool(mem[_185])
                else:
                    t = 10
                    u = 1
                    s = mem[_113 + 31 len 1]
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
                    _209 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _212 = mem[_209]
                    if mem[_209]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _212
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _212
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_221] == bool(mem[_221])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if msg.sender == owner:
            idx = 1
            while idx <= stor5:
                mem[0] = idx
                mem[32] = 3
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _114 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_114] == mem[_114 + 31 len 1]
                if not mem[_114 + 31 len 1]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _141 = mem[_138]
                    if mem[_138]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _141
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _141
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_168] == bool(mem[_168])
                else:
                    if bool(bool(mem[_114 + 31 len 1] < 78)) or bool(bool(mem[_114 + 31 len 1] < 32)):
                        if False and 10^mem[_114 + 31 len 1] > 0:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenList[idx])
                        staticcall tokenList[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _163 = mem[_151]
                        if mem[_151]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _163
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _163
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_186] == bool(mem[_186])
                    else:
                        t = 10
                        u = 1
                        s = mem[_114 + 31 len 1]
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
                        _210 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _213 = mem[_210]
                        if mem[_210]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _213
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _213
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _222 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_222] == bool(mem[_222])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if creatorAddress != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            idx = 1
            while idx <= stor5:
                mem[0] = idx
                mem[32] = 3
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_115] == mem[_115 + 31 len 1]
                if not mem[_115 + 31 len 1]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _142 = mem[_139]
                    if mem[_139]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _142
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _142
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _169 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_169] == bool(mem[_169])
                else:
                    if bool(bool(mem[_115 + 31 len 1] < 78)) or bool(bool(mem[_115 + 31 len 1] < 32)):
                        if False and 10^mem[_115 + 31 len 1] > 0:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenList[idx])
                        staticcall tokenList[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _166 = mem[_153]
                        if mem[_153]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _166
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _166
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_187] == bool(mem[_187])
                    else:
                        t = 10
                        u = 1
                        s = mem[_115 + 31 len 1]
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
                        _211 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _214 = mem[_211]
                        if mem[_211]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _214
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _214
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _223 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_223] == bool(mem[_223])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    if owner != msg.sender:
        if creatorAddress != msg.sender:
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
    mem[32] = 2
    if stor2[msg.sender]:
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
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
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'balance not enough'
        if stor11 != address(arg3):
            revert with 0, 'invalid task'
        if not stor15:
            require ext_code.size(stor13)
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            t = (4 * ceil32(return_data.size)) + 292
            while idx < stor6.length:
                mem[t] = stor6[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=stor6.length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), owner, stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor13)
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 0 < arg2:
                revert with 0, 'output not enough'
        else:
            mem[(2 * ceil32(return_data.size)) + 164] = 160
            mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 292
            while idx < stor6.length:
                mem[t] = stor6[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            mem[(2 * ceil32(return_data.size)) + 228] = stor14
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = stor8
            mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
            require ext_code.size(stor13)
            call stor13.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8, test266151307()
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(stor13)
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = 0
            mem[(6 * ceil32(return_data.size)) + 164] = 160
            mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
            idx = 0
            s = 0
            t = (6 * ceil32(return_data.size)) + 292
            while idx < stor7.length:
                mem[t] = stor7[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 196] = owner
            mem[(6 * ceil32(return_data.size)) + 228] = stor14
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 < arg1 / 100000:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 100] = owner
            require ext_code.size(stor13)
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 100] = arg1 - (arg1 / 100000)
            mem[(7 * ceil32(return_data.size)) + 132] = arg2
            mem[(7 * ceil32(return_data.size)) + 164] = 160
            mem[(7 * ceil32(return_data.size)) + 260] = stor6.length
            mem[0] = 6
            idx = 0
            s = 0
            t = mem[64] + 196
            while idx < stor6.length:
                mem[t] = stor[s + sha3(mem[0])]
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 196] = owner
            mem[(7 * ceil32(return_data.size)) + 228] = stor14
            require ext_code.size(stor8)
            call stor8.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + (32 * stor6.length) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = owner
            require ext_code.size(stor13)
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > mem[_424]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if mem[_424] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if mem[_424] - ext_call.return_data[0] < arg2:
                revert with 0, 'output not enough'
    else:
        if msg.sender == owner:
            require ext_code.size(address(arg3))
            staticcall address(arg3).getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
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
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'balance not enough'
            if stor11 != address(arg3):
                revert with 0, 'invalid task'
            if not stor15:
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                s = 0
                t = (4 * ceil32(return_data.size)) + 292
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=stor6.length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), owner, stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 0 < arg2:
                    revert with 0, 'output not enough'
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = 160
                mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
                idx = 0
                s = 0
                t = (2 * ceil32(return_data.size)) + 292
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                mem[(2 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 100] = stor8
                mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
                require ext_code.size(stor13)
                call stor13.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, test266151307()
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 132] = 0
                mem[(6 * ceil32(return_data.size)) + 164] = 160
                mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 292
                while idx < stor7.length:
                    mem[t] = stor7[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 196] = owner
                mem[(6 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < arg1 / 100000:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = owner
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 100] = arg1 - (arg1 / 100000)
                mem[(7 * ceil32(return_data.size)) + 132] = arg2
                mem[(7 * ceil32(return_data.size)) + 164] = 160
                mem[(7 * ceil32(return_data.size)) + 260] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = mem[64] + 196
                while idx < stor6.length:
                    mem[t] = stor[s + sha3(mem[0])]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 196] = owner
                mem[(7 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + (32 * stor6.length) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = owner
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > mem[_425]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if mem[_425] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if mem[_425] - ext_call.return_data[0] < arg2:
                    revert with 0, 'output not enough'
        else:
            if creatorAddress != msg.sender:
                revert with 0, 'white only'
            require ext_code.size(address(arg3))
            staticcall address(arg3).getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
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
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'balance not enough'
            if stor11 != address(arg3):
                revert with 0, 'invalid task'
            if not stor15:
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                s = 0
                t = (4 * ceil32(return_data.size)) + 292
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=stor6.length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), owner, stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 0 < arg2:
                    revert with 0, 'output not enough'
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = 160
                mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
                idx = 0
                s = 0
                t = (2 * ceil32(return_data.size)) + 292
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                mem[(2 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 100] = stor8
                mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
                require ext_code.size(stor13)
                call stor13.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, test266151307()
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 132] = 0
                mem[(6 * ceil32(return_data.size)) + 164] = 160
                mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 292
                while idx < stor7.length:
                    mem[t] = stor7[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 196] = owner
                mem[(6 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < arg1 / 100000:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = owner
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 100] = arg1 - (arg1 / 100000)
                mem[(7 * ceil32(return_data.size)) + 132] = arg2
                mem[(7 * ceil32(return_data.size)) + 164] = 160
                mem[(7 * ceil32(return_data.size)) + 260] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = mem[64] + 196
                while idx < stor6.length:
                    mem[t] = stor[s + sha3(mem[0])]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 196] = owner
                mem[(7 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + (32 * stor6.length) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = owner
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > mem[_426]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if mem[_426] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if mem[_426] - ext_call.return_data[0] < arg2:
                    revert with 0, 'output not enough'
}

function sub_f13b5836(?) {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    mem[0] = msg.sender
    mem[32] = 2
    if stor2[msg.sender]:
        require ext_code.size(address(arg3))
        staticcall address(arg3).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
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
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'balance not enough'
        if stor11 != address(arg3):
            revert with 0, 'invalid task'
        if not stor15:
            idx = 1
            s = 0
            while idx <= arg4:
                _244 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = stor6.length
                mem[0] = 6
                s = 0
                t = sha3(mem[0])
                u = mem[64] + 100
                while s < stor6.length:
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                staticcall stor8.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _244 + (32 * stor6.length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _433 = mem[_430]
                require mem[_430] <= test266151307()
                require _430 + mem[_430] + 31 < _430 + return_data.size
                _436 = mem[_430 + mem[_430]]
                if mem[_430 + mem[_430]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_430 + mem[_430]]) + 1 < 0 or _430 + ceil32(return_data.size) + ceil32(32 * mem[_430 + mem[_430]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _430 + ceil32(return_data.size) + ceil32(32 * mem[_430 + mem[_430]]) + 1
                mem[_430 + ceil32(return_data.size)] = _436
                require return_data.size >= _433 + (32 * _436) + 32
                t = _430 + _433 + 32
                u = _430 + ceil32(return_data.size) + 32
                s = 0
                while s < _436:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 0 >= _436:
                    revert with 'NH{q', 50
                _574 = mem[_430 + ceil32(return_data.size) + 32]
                if mem[_430 + ceil32(return_data.size) + 32] > arg1:
                    if 1 == idx:
                        revert with 0, 'input too large'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _574 > mem[_589]:
                _604 = mem[64]
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = _574
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor6.length
                mem[0] = 6
                s = 0
                t = sha3(mem[0])
                u = mem[64] + 196
                while s < stor6.length:
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                mem[_604 + 100] = owner
                mem[_604 + 132] = stor14
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _604 + (32 * stor6.length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _694 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _700 = mem[_694]
                require mem[_694] <= test266151307()
                require _694 + mem[_694] + 31 < _694 + return_data.size
                _706 = mem[_694 + mem[_694]]
                if mem[_694 + mem[_694]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_694 + mem[_694]]) + 1 < 0 or _694 + ceil32(return_data.size) + ceil32(32 * mem[_694 + mem[_694]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _694 + ceil32(return_data.size) + ceil32(32 * mem[_694 + mem[_694]]) + 1
                mem[_694 + ceil32(return_data.size)] = _706
                require return_data.size >= _700 + (32 * _706) + 32
                t = _694 + _700 + 32
                u = _694 + ceil32(return_data.size) + 32
                s = 0
                while s < _706:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _694 + _700 + (32 * _706) + 32 == -1:
                    revert with 'NH{q', 17
                t = _694 + _700 + (32 * _706) + 33
                s = _574
                continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 164] = 160
            mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 292
            while idx < stor6.length:
                mem[t] = stor6[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            mem[(2 * ceil32(return_data.size)) + 228] = stor14
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = stor8
            mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
            require ext_code.size(stor13)
            call stor13.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8, test266151307()
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(stor13)
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 132] = 0
            mem[(6 * ceil32(return_data.size)) + 164] = 160
            mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
            mem[0] = 7
            idx = 0
            s = 0
            t = (6 * ceil32(return_data.size)) + 292
            while idx < stor7.length:
                mem[t] = stor7[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 196] = owner
            mem[(6 * ceil32(return_data.size)) + 228] = stor14
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 < arg1 / 100000:
                revert with 'NH{q', 17
            idx = 1
            s = 0
            while idx <= arg4:
                _566 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = stor6.length
                mem[0] = 6
                s = 0
                t = sha3(mem[0])
                u = mem[64] + 100
                while s < stor6.length:
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                staticcall stor8.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _566 + (32 * stor6.length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _695 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _701 = mem[_695]
                require mem[_695] <= test266151307()
                require _695 + mem[_695] + 31 < _695 + return_data.size
                _707 = mem[_695 + mem[_695]]
                if mem[_695 + mem[_695]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_695 + mem[_695]]) + 1 < 0 or _695 + ceil32(return_data.size) + ceil32(32 * mem[_695 + mem[_695]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _695 + ceil32(return_data.size) + ceil32(32 * mem[_695 + mem[_695]]) + 1
                mem[_695 + ceil32(return_data.size)] = _707
                require return_data.size >= _701 + (32 * _707) + 32
                t = _695 + _701 + 32
                u = _695 + ceil32(return_data.size) + 32
                s = 0
                while s < _707:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 0 >= _707:
                    revert with 'NH{q', 50
                _781 = mem[_695 + ceil32(return_data.size) + 32]
                if mem[_695 + ceil32(return_data.size) + 32] > arg1 - (arg1 / 100000):
                    if 1 == idx:
                        revert with 0, 'input too large'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _793 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _781 > mem[_793]:
                _802 = mem[64]
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = _781
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor6.length
                mem[0] = 6
                s = 0
                t = sha3(mem[0])
                u = mem[64] + 196
                while s < stor6.length:
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                mem[_802 + 100] = owner
                mem[_802 + 132] = stor14
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _802 + (32 * stor6.length) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _829 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _832 = mem[_829]
                require mem[_829] <= test266151307()
                require _829 + mem[_829] + 31 < _829 + return_data.size
                _835 = mem[_829 + mem[_829]]
                if mem[_829 + mem[_829]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_829 + mem[_829]]) + 1 < 0 or _829 + ceil32(return_data.size) + ceil32(32 * mem[_829 + mem[_829]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _829 + ceil32(return_data.size) + ceil32(32 * mem[_829 + mem[_829]]) + 1
                mem[_829 + ceil32(return_data.size)] = _835
                require return_data.size >= _832 + (32 * _835) + 32
                t = _829 + _832 + 32
                u = _829 + ceil32(return_data.size) + 32
                s = 0
                while s < _835:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _829 + _832 + (32 * _835) + 32 == -1:
                    revert with 'NH{q', 17
                t = _829 + _832 + (32 * _835) + 33
                s = _781
                continue 
    else:
        if msg.sender == owner:
            require ext_code.size(address(arg3))
            staticcall address(arg3).getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
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
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'balance not enough'
            if stor11 != address(arg3):
                revert with 0, 'invalid task'
            if not stor15:
                idx = 1
                s = 0
                while idx <= arg4:
                    _245 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(mem[0])
                    u = mem[64] + 100
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    require ext_code.size(stor8)
                    staticcall stor8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _245 + (32 * stor6.length) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _431 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _434 = mem[_431]
                    require mem[_431] <= test266151307()
                    require _431 + mem[_431] + 31 < _431 + return_data.size
                    _437 = mem[_431 + mem[_431]]
                    if mem[_431 + mem[_431]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_431 + mem[_431]]) + 1 < 0 or _431 + ceil32(return_data.size) + ceil32(32 * mem[_431 + mem[_431]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _431 + ceil32(return_data.size) + ceil32(32 * mem[_431 + mem[_431]]) + 1
                    mem[_431 + ceil32(return_data.size)] = _437
                    require return_data.size >= _434 + (32 * _437) + 32
                    t = _431 + _434 + 32
                    u = _431 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _437:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _437:
                        revert with 'NH{q', 50
                    _576 = mem[_431 + ceil32(return_data.size) + 32]
                    if mem[_431 + ceil32(return_data.size) + 32] > arg1:
                        if 1 == idx:
                            revert with 0, 'input too large'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _576 > mem[_591]:
                    _605 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _576
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(mem[0])
                    u = mem[64] + 196
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    mem[_605 + 100] = owner
                    mem[_605 + 132] = stor14
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _605 + (32 * stor6.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _696 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _702 = mem[_696]
                    require mem[_696] <= test266151307()
                    require _696 + mem[_696] + 31 < _696 + return_data.size
                    _708 = mem[_696 + mem[_696]]
                    if mem[_696 + mem[_696]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_696 + mem[_696]]) + 1 < 0 or _696 + ceil32(return_data.size) + ceil32(32 * mem[_696 + mem[_696]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _696 + ceil32(return_data.size) + ceil32(32 * mem[_696 + mem[_696]]) + 1
                    mem[_696 + ceil32(return_data.size)] = _708
                    require return_data.size >= _702 + (32 * _708) + 32
                    t = _696 + _702 + 32
                    u = _696 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _708:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _696 + _702 + (32 * _708) + 32 == -1:
                        revert with 'NH{q', 17
                    t = _696 + _702 + (32 * _708) + 33
                    s = _576
                    continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = 160
                mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
                idx = 0
                s = 0
                t = (2 * ceil32(return_data.size)) + 292
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                mem[(2 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 100] = stor8
                mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
                require ext_code.size(stor13)
                call stor13.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, test266151307()
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 132] = 0
                mem[(6 * ceil32(return_data.size)) + 164] = 160
                mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
                mem[0] = 7
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 292
                while idx < stor7.length:
                    mem[t] = stor7[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 196] = owner
                mem[(6 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < arg1 / 100000:
                    revert with 'NH{q', 17
                idx = 1
                s = 0
                while idx <= arg4:
                    _568 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(mem[0])
                    u = mem[64] + 100
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    require ext_code.size(stor8)
                    staticcall stor8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _568 + (32 * stor6.length) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _697 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _703 = mem[_697]
                    require mem[_697] <= test266151307()
                    require _697 + mem[_697] + 31 < _697 + return_data.size
                    _709 = mem[_697 + mem[_697]]
                    if mem[_697 + mem[_697]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_697 + mem[_697]]) + 1 < 0 or _697 + ceil32(return_data.size) + ceil32(32 * mem[_697 + mem[_697]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _697 + ceil32(return_data.size) + ceil32(32 * mem[_697 + mem[_697]]) + 1
                    mem[_697 + ceil32(return_data.size)] = _709
                    require return_data.size >= _703 + (32 * _709) + 32
                    t = _697 + _703 + 32
                    u = _697 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _709:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _709:
                        revert with 'NH{q', 50
                    _782 = mem[_697 + ceil32(return_data.size) + 32]
                    if mem[_697 + ceil32(return_data.size) + 32] > arg1 - (arg1 / 100000):
                        if 1 == idx:
                            revert with 0, 'input too large'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _795 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _782 > mem[_795]:
                    _803 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _782
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(mem[0])
                    u = mem[64] + 196
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    mem[_803 + 100] = owner
                    mem[_803 + 132] = stor14
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _803 + (32 * stor6.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _830 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _833 = mem[_830]
                    require mem[_830] <= test266151307()
                    require _830 + mem[_830] + 31 < _830 + return_data.size
                    _836 = mem[_830 + mem[_830]]
                    if mem[_830 + mem[_830]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_830 + mem[_830]]) + 1 < 0 or _830 + ceil32(return_data.size) + ceil32(32 * mem[_830 + mem[_830]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _830 + ceil32(return_data.size) + ceil32(32 * mem[_830 + mem[_830]]) + 1
                    mem[_830 + ceil32(return_data.size)] = _836
                    require return_data.size >= _833 + (32 * _836) + 32
                    t = _830 + _833 + 32
                    u = _830 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _836:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _830 + _833 + (32 * _836) + 32 == -1:
                        revert with 'NH{q', 17
                    t = _830 + _833 + (32 * _836) + 33
                    s = _782
                    continue 
        else:
            if creatorAddress != msg.sender:
                revert with 0, 'white only'
            require ext_code.size(address(arg3))
            staticcall address(arg3).getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
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
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'balance not enough'
            if stor11 != address(arg3):
                revert with 0, 'invalid task'
            if not stor15:
                idx = 1
                s = 0
                while idx <= arg4:
                    _246 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(mem[0])
                    u = mem[64] + 100
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    require ext_code.size(stor8)
                    staticcall stor8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _246 + (32 * stor6.length) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _435 = mem[_432]
                    require mem[_432] <= test266151307()
                    require _432 + mem[_432] + 31 < _432 + return_data.size
                    _438 = mem[_432 + mem[_432]]
                    if mem[_432 + mem[_432]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_432 + mem[_432]]) + 1 < 0 or _432 + ceil32(return_data.size) + ceil32(32 * mem[_432 + mem[_432]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _432 + ceil32(return_data.size) + ceil32(32 * mem[_432 + mem[_432]]) + 1
                    mem[_432 + ceil32(return_data.size)] = _438
                    require return_data.size >= _435 + (32 * _438) + 32
                    t = _432 + _435 + 32
                    u = _432 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _438:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _438:
                        revert with 'NH{q', 50
                    _578 = mem[_432 + ceil32(return_data.size) + 32]
                    if mem[_432 + ceil32(return_data.size) + 32] > arg1:
                        if 1 == idx:
                            revert with 0, 'input too large'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _593 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _578 > mem[_593]:
                    _606 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _578
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(mem[0])
                    u = mem[64] + 196
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    mem[_606 + 100] = owner
                    mem[_606 + 132] = stor14
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _606 + (32 * stor6.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _698 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _704 = mem[_698]
                    require mem[_698] <= test266151307()
                    require _698 + mem[_698] + 31 < _698 + return_data.size
                    _710 = mem[_698 + mem[_698]]
                    if mem[_698 + mem[_698]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_698 + mem[_698]]) + 1 < 0 or _698 + ceil32(return_data.size) + ceil32(32 * mem[_698 + mem[_698]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _698 + ceil32(return_data.size) + ceil32(32 * mem[_698 + mem[_698]]) + 1
                    mem[_698 + ceil32(return_data.size)] = _710
                    require return_data.size >= _704 + (32 * _710) + 32
                    t = _698 + _704 + 32
                    u = _698 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _710:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _698 + _704 + (32 * _710) + 32 == -1:
                        revert with 'NH{q', 17
                    t = _698 + _704 + (32 * _710) + 33
                    s = _578
                    continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = 160
                mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
                idx = 0
                s = 0
                t = (2 * ceil32(return_data.size)) + 292
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                mem[(2 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 100] = stor8
                mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
                require ext_code.size(stor13)
                call stor13.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, test266151307()
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 132] = 0
                mem[(6 * ceil32(return_data.size)) + 164] = 160
                mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
                mem[0] = 7
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 292
                while idx < stor7.length:
                    mem[t] = stor7[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 196] = owner
                mem[(6 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < arg1 / 100000:
                    revert with 'NH{q', 17
                idx = 1
                s = 0
                while idx <= arg4:
                    _570 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(mem[0])
                    u = mem[64] + 100
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    require ext_code.size(stor8)
                    staticcall stor8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _570 + (32 * stor6.length) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _699 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _705 = mem[_699]
                    require mem[_699] <= test266151307()
                    require _699 + mem[_699] + 31 < _699 + return_data.size
                    _711 = mem[_699 + mem[_699]]
                    if mem[_699 + mem[_699]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_699 + mem[_699]]) + 1 < 0 or _699 + ceil32(return_data.size) + ceil32(32 * mem[_699 + mem[_699]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _699 + ceil32(return_data.size) + ceil32(32 * mem[_699 + mem[_699]]) + 1
                    mem[_699 + ceil32(return_data.size)] = _711
                    require return_data.size >= _705 + (32 * _711) + 32
                    t = _699 + _705 + 32
                    u = _699 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _711:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _711:
                        revert with 'NH{q', 50
                    _783 = mem[_699 + ceil32(return_data.size) + 32]
                    if mem[_699 + ceil32(return_data.size) + 32] > arg1 - (arg1 / 100000):
                        if 1 == idx:
                            revert with 0, 'input too large'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _797 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _783 > mem[_797]:
                    _804 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _783
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(mem[0])
                    u = mem[64] + 196
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    mem[_804 + 100] = owner
                    mem[_804 + 132] = stor14
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _804 + (32 * stor6.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _831 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _834 = mem[_831]
                    require mem[_831] <= test266151307()
                    require _831 + mem[_831] + 31 < _831 + return_data.size
                    _837 = mem[_831 + mem[_831]]
                    if mem[_831 + mem[_831]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_831 + mem[_831]]) + 1 < 0 or _831 + ceil32(return_data.size) + ceil32(32 * mem[_831 + mem[_831]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _831 + ceil32(return_data.size) + ceil32(32 * mem[_831 + mem[_831]]) + 1
                    mem[_831 + ceil32(return_data.size)] = _837
                    require return_data.size >= _834 + (32 * _837) + 32
                    t = _831 + _834 + 32
                    u = _831 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _837:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _831 + _834 + (32 * _837) + 32 == -1:
                        revert with 'NH{q', 17
                    t = _831 + _834 + (32 * _837) + 33
                    s = _783
                    continue 
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x946b5793(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4229dbe3(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x853828b6(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x4229dbe3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return eth.balance(this.address)
                    if uint32(call.func_hash) >> 224 != unknown_0x4b8eb24c(?????):
                        require unknown_0x6088e93a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            if creatorAddress != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(arg1))
                        call address(arg1).0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, owner, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            if creatorAddress != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        if not sub_ba27f50b[address(arg1)]:
                            if stor5 > -2:
                                revert with 'NH{q', 17
                            stor5++
                            sub_ba27f50b[address(arg1)] = stor5
                            tokenList[stor5] = address(arg1)
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8b09832d(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            if creatorAddress != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        stor2[address(arg1)] = 1
                    else:
                        require not msg.value
                        if msg.sender == owner:
                            idx = 1
                            while idx <= stor5:
                                mem[0] = idx
                                mem[32] = 3
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _986 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_986] == mem[_986 + 31 len 1]
                                if not mem[_986 + 31 len 1]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1166 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1195 = mem[_1166]
                                    if mem[_1166]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _1195
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, _1195
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1275 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1275] == bool(mem[_1275])
                                else:
                                    if bool(bool(mem[_986 + 31 len 1] < 78)) or bool(bool(mem[_986 + 31 len 1] < 32)):
                                        if False and 10^mem[_986 + 31 len 1] > 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1236 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1263 = mem[_1236]
                                        if mem[_1236]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1263
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1263
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1327 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1327] == bool(mem[_1327])
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_986 + 31 len 1]
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
                                        _1544 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1555 = mem[_1544]
                                        if mem[_1544]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1555
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1555
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1597 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1597] == bool(mem[_1597])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if creatorAddress != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if msg.sender == owner:
                                idx = 1
                                while idx <= stor5:
                                    mem[0] = idx
                                    mem[32] = 3
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _987 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_987] == mem[_987 + 31 len 1]
                                    if not mem[_987 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1167 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1196 = mem[_1167]
                                        if mem[_1167]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1196
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1196
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1276 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1276] == bool(mem[_1276])
                                    else:
                                        if bool(bool(mem[_987 + 31 len 1] < 78)) or bool(bool(mem[_987 + 31 len 1] < 32)):
                                            if False and 10^mem[_987 + 31 len 1] > 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1238 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1266 = mem[_1238]
                                            if mem[_1238]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1266
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1266
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1328 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1328] == bool(mem[_1328])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_987 + 31 len 1]
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
                                            _1545 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1556 = mem[_1545]
                                            if mem[_1545]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1556
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1556
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1598 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1598] == bool(mem[_1598])
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if creatorAddress != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                idx = 1
                                while idx <= stor5:
                                    mem[0] = idx
                                    mem[32] = 3
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _988 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_988] == mem[_988 + 31 len 1]
                                    if not mem[_988 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1168 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1197 = mem[_1168]
                                        if mem[_1168]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1197
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1197
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1277 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1277] == bool(mem[_1277])
                                    else:
                                        if bool(bool(mem[_988 + 31 len 1] < 78)) or bool(bool(mem[_988 + 31 len 1] < 32)):
                                            if False and 10^mem[_988 + 31 len 1] > 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1240 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1269 = mem[_1240]
                                            if mem[_1240]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1269
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1269
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1329 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1329] == bool(mem[_1329])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_988 + 31 len 1]
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
                                            _1546 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1557 = mem[_1546]
                                            if mem[_1546]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1557
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1557
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1599 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1599] == bool(mem[_1599])
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                        if owner != msg.sender:
                            if creatorAddress != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        if eth.balance(this.address):
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            if unknown_0x14870d2c(?????) > uint32(call.func_hash) >> 224:
                if creator() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return creatorAddress
                if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        if creatorAddress != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    if stor0 > 65534:
                        revert with 'NH{q', 17
                    stor0 = uint16(stor0 + 1)
                    if stor0 >= 2:
                        stor0 = 0
                        owner = address(arg1)
                require unknown_0x13e821df(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg4 == bool(arg4)
                if stor9 != address(arg1):
                    return (stor9 == address(arg1))
                if stor10 != address(arg2):
                    return (stor10 == address(arg2))
                if stor11 != address(arg3):
                    return (stor11 == address(arg3))
                return (bool(arg4) == bool(stor15))
            if unknown_0x14870d2c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if msg.sender == owner:
                    idx = 1
                    while idx <= stor5:
                        mem[0] = idx
                        mem[32] = 3
                        require ext_code.size(tokenList[idx])
                        staticcall tokenList[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_984] == mem[_984 + 31 len 1]
                        if not mem[_984 + 31 len 1]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1164 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1193 = mem[_1164]
                            if mem[_1164]:
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _1193
                                require ext_code.size(tokenList[idx])
                                call tokenList[idx].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _1193
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1273 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1273] == bool(mem[_1273])
                        else:
                            if bool(bool(mem[_984 + 31 len 1] < 78)) or bool(bool(mem[_984 + 31 len 1] < 32)):
                                if False and 10^mem[_984 + 31 len 1] > 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1232 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1257 = mem[_1232]
                                if mem[_1232]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _1257
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _1257
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1325 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1325] == bool(mem[_1325])
                            else:
                                t = 10
                                u = 1
                                s = mem[_984 + 31 len 1]
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
                                _1542 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1553 = mem[_1542]
                                if mem[_1542]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _1553
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _1553
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1595 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1595] == bool(mem[_1595])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if creatorAddress != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 1
                    while idx <= stor5:
                        mem[0] = idx
                        mem[32] = 3
                        require ext_code.size(tokenList[idx])
                        staticcall tokenList[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_985] == mem[_985 + 31 len 1]
                        if not mem[_985 + 31 len 1]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1165 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1194 = mem[_1165]
                            if mem[_1165]:
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _1194
                                require ext_code.size(tokenList[idx])
                                call tokenList[idx].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _1194
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1274 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1274] == bool(mem[_1274])
                        else:
                            if bool(bool(mem[_985 + 31 len 1] < 78)) or bool(bool(mem[_985 + 31 len 1] < 32)):
                                if False and 10^mem[_985 + 31 len 1] > 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1234 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1260 = mem[_1234]
                                if mem[_1234]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _1260
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _1260
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1326 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1326] == bool(mem[_1326])
                            else:
                                t = 10
                                u = 1
                                s = mem[_985 + 31 len 1]
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
                                _1543 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1554 = mem[_1543]
                                if mem[_1543]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _1554
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _1554
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1596 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1596] == bool(mem[_1596])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            if unknown_0x1b52b9de(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    if creatorAddress != msg.sender:
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
        if unknown_0xe24be30d(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xb99152d0(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xb99152d0(?????) == uint32(call.func_hash) >> 224:
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
                if unknown_0xba27f50b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_ba27f50b[arg1]
                require unknown_0xdad69c20(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    if creatorAddress != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                stor2[address(arg1)] = 0
            else:
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
                if uint32(call.func_hash) >> 224 != unknown_0x9e281a98(?????):
                    require unknown_0x9ead7222(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return tokenList[arg1]
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    if creatorAddress != msg.sender:
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
                            args owner, arg2
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
                                args owner, ext_call.return_data[0]
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
                                args owner, arg2 * 10^uint8(ext_call.return_data[0])
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
                                    args owner, ext_call.return_data[0]
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
                                args owner, arg2 * s * t
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
                                    args owner, ext_call.return_data[0]
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
                        return bool(stor2[arg1])
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
                        if creatorAddress != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    stor12 = address(arg2)
                    stor13 = address(arg3)
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), test266151307()
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= stor6.length:
                        revert with 'NH{q', 50
                    address(stor6.field_0) = address(arg2)
                    if 1 >= stor6.length:
                        revert with 'NH{q', 50
                    address(stor6.field_256) = address(arg3)
                    if 0 >= stor7.length:
                        revert with 'NH{q', 50
                    address(stor7.field_0) = address(arg3)
                    if 1 >= stor7.length:
                        revert with 'NH{q', 50
                    address(stor7.field_256) = address(arg2)
                    if not sub_ba27f50b[address(arg2)]:
                        if stor5 > -2:
                            revert with 'NH{q', 17
                        stor5++
                        sub_ba27f50b[address(arg2)] = stor5
                        tokenList[stor5] = address(arg2)
                    if not sub_ba27f50b[address(arg3)]:
                        if stor5 > -2:
                            revert with 'NH{q', 17
                        stor5++
                        sub_ba27f50b[address(arg3)] = stor5
                        tokenList[stor5] = address(arg3)
                    stor8 = address(arg1)
                    stor9 = address(arg2)
                    stor10 = address(arg3)
                    stor11 = address(arg4)
                    stor15 = uint8(bool(arg5))
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xe24be30d(?????):
                    if unknown_0xe551b351(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if owner != msg.sender:
                            if creatorAddress != msg.sender:
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
                                    if stor5 > -2:
                                        revert with 'NH{q', 17
                                    stor5++
                                    sub_ba27f50b[address(arg1)] = stor5
                                    tokenList[stor5] = address(arg1)
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
                                        if stor5 > -2:
                                            revert with 'NH{q', 17
                                        stor5++
                                        sub_ba27f50b[address(arg1)] = stor5
                                        tokenList[stor5] = address(arg1)
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
                                        if stor5 > -2:
                                            revert with 'NH{q', 17
                                        stor5++
                                        sub_ba27f50b[address(arg1)] = stor5
                                        tokenList[stor5] = address(arg1)
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
                                            if stor5 > -2:
                                                revert with 'NH{q', 17
                                            stor5++
                                            sub_ba27f50b[address(arg1)] = stor5
                                            tokenList[stor5] = address(arg1)
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
                                        if stor5 > -2:
                                            revert with 'NH{q', 17
                                        stor5++
                                        sub_ba27f50b[address(arg1)] = stor5
                                        tokenList[stor5] = address(arg1)
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
                                            if stor5 > -2:
                                                revert with 'NH{q', 17
                                            stor5++
                                            sub_ba27f50b[address(arg1)] = stor5
                                            tokenList[stor5] = address(arg1)
                    else:
                        require unknown_0xf13b5836(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require arg3 == address(arg3)
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[msg.sender]:
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).getReserves() with:
                                    gas gas_remaining wei
                            mem[128 len 96] = ext_call.return_data[0 len 96]
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
                            mem[ceil32(return_data.size) + 132] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if arg1 > ext_call.return_data[0]:
                                revert with 0, 'balance not enough'
                            if stor11 != address(arg3):
                                revert with 0, 'invalid task'
                            if not stor15:
                                idx = 1
                                s = 0
                                while idx <= arg4:
                                    _958 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = stor6.length
                                    mem[0] = 6
                                    s = 0
                                    t = sha3(mem[0])
                                    u = mem[64] + 100
                                    while s < stor6.length:
                                        mem[u] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor8)
                                    staticcall stor8.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _958 + (32 * stor6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1508 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1511 = mem[_1508]
                                    require mem[_1508] <= test266151307()
                                    require _1508 + mem[_1508] + 31 < _1508 + return_data.size
                                    _1520 = mem[_1508 + mem[_1508]]
                                    if mem[_1508 + mem[_1508]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_1508 + mem[_1508]]) + 1 < 0 or _1508 + ceil32(return_data.size) + ceil32(32 * mem[_1508 + mem[_1508]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _1508 + ceil32(return_data.size) + ceil32(32 * mem[_1508 + mem[_1508]]) + 1
                                    mem[_1508 + ceil32(return_data.size)] = _1520
                                    require return_data.size >= _1511 + (32 * _1520) + 32
                                    t = _1508 + _1511 + 32
                                    u = _1508 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1520:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if 0 >= _1520:
                                        revert with 'NH{q', 50
                                    _1752 = mem[_1508 + ceil32(return_data.size) + 32]
                                    if mem[_1508 + ceil32(return_data.size) + 32] > arg1:
                                        if 1 == idx:
                                            revert with 0, 'input too large'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1773 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if _1752 > mem[_1773]:
                                    _1794 = mem[64]
                                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = _1752
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor6.length
                                    mem[0] = 6
                                    s = 0
                                    t = sha3(mem[0])
                                    u = mem[64] + 196
                                    while s < stor6.length:
                                        mem[u] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    mem[_1794 + 100] = owner
                                    mem[_1794 + 132] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1794 + (32 * stor6.length) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1917 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1923 = mem[_1917]
                                    require mem[_1917] <= test266151307()
                                    require _1917 + mem[_1917] + 31 < _1917 + return_data.size
                                    _1929 = mem[_1917 + mem[_1917]]
                                    if mem[_1917 + mem[_1917]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_1917 + mem[_1917]]) + 1 < 0 or _1917 + ceil32(return_data.size) + ceil32(32 * mem[_1917 + mem[_1917]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _1917 + ceil32(return_data.size) + ceil32(32 * mem[_1917 + mem[_1917]]) + 1
                                    mem[_1917 + ceil32(return_data.size)] = _1929
                                    require return_data.size >= _1923 + (32 * _1929) + 32
                                    t = _1917 + _1923 + 32
                                    u = _1917 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1929:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if _1917 + _1923 + (32 * _1929) + 32 == -1:
                                        revert with 'NH{q', 17
                                    t = _1917 + _1923 + (32 * _1929) + 33
                                    s = _1752
                                    continue 
                            else:
                                mem[(2 * ceil32(return_data.size)) + 196] = 160
                                mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                                idx = 0
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 324
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(2 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 132] = stor8
                                mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                require ext_code.size(stor13)
                                call stor13.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor8, test266151307()
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[(6 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                mem[(6 * ceil32(return_data.size)) + 164] = 0
                                mem[(6 * ceil32(return_data.size)) + 196] = 160
                                mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                                mem[0] = 7
                                idx = 0
                                s = 0
                                t = (6 * ceil32(return_data.size)) + 324
                                while idx < stor7.length:
                                    mem[t] = stor7[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 228] = owner
                                mem[(6 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < arg1 / 100000:
                                    revert with 'NH{q', 17
                                idx = 1
                                s = 0
                                while idx <= arg4:
                                    _1741 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = stor6.length
                                    mem[0] = 6
                                    s = 0
                                    t = sha3(mem[0])
                                    u = mem[64] + 100
                                    while s < stor6.length:
                                        mem[u] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor8)
                                    staticcall stor8.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _1741 + (32 * stor6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1918 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1924 = mem[_1918]
                                    require mem[_1918] <= test266151307()
                                    require _1918 + mem[_1918] + 31 < _1918 + return_data.size
                                    _1930 = mem[_1918 + mem[_1918]]
                                    if mem[_1918 + mem[_1918]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_1918 + mem[_1918]]) + 1 < 0 or _1918 + ceil32(return_data.size) + ceil32(32 * mem[_1918 + mem[_1918]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _1918 + ceil32(return_data.size) + ceil32(32 * mem[_1918 + mem[_1918]]) + 1
                                    mem[_1918 + ceil32(return_data.size)] = _1930
                                    require return_data.size >= _1924 + (32 * _1930) + 32
                                    t = _1918 + _1924 + 32
                                    u = _1918 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1930:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if 0 >= _1930:
                                        revert with 'NH{q', 50
                                    _2004 = mem[_1918 + ceil32(return_data.size) + 32]
                                    if mem[_1918 + ceil32(return_data.size) + 32] > arg1 - (arg1 / 100000):
                                        if 1 == idx:
                                            revert with 0, 'input too large'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2016 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if _2004 > mem[_2016]:
                                    _2025 = mem[64]
                                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = _2004
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor6.length
                                    mem[0] = 6
                                    s = 0
                                    t = sha3(mem[0])
                                    u = mem[64] + 196
                                    while s < stor6.length:
                                        mem[u] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    mem[_2025 + 100] = owner
                                    mem[_2025 + 132] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2025 + (32 * stor6.length) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2052 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2055 = mem[_2052]
                                    require mem[_2052] <= test266151307()
                                    require _2052 + mem[_2052] + 31 < _2052 + return_data.size
                                    _2058 = mem[_2052 + mem[_2052]]
                                    if mem[_2052 + mem[_2052]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2052 + mem[_2052]]) + 1 < 0 or _2052 + ceil32(return_data.size) + ceil32(32 * mem[_2052 + mem[_2052]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2052 + ceil32(return_data.size) + ceil32(32 * mem[_2052 + mem[_2052]]) + 1
                                    mem[_2052 + ceil32(return_data.size)] = _2058
                                    require return_data.size >= _2055 + (32 * _2058) + 32
                                    t = _2052 + _2055 + 32
                                    u = _2052 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2058:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if _2052 + _2055 + (32 * _2058) + 32 == -1:
                                        revert with 'NH{q', 17
                                    t = _2052 + _2055 + (32 * _2058) + 33
                                    s = _2004
                                    continue 
                        else:
                            if msg.sender == owner:
                                require ext_code.size(address(arg3))
                                staticcall address(arg3).getReserves() with:
                                        gas gas_remaining wei
                                mem[128 len 96] = ext_call.return_data[0 len 96]
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
                                mem[ceil32(return_data.size) + 132] = this.address
                                require ext_code.size(stor12)
                                staticcall stor12.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if arg1 > ext_call.return_data[0]:
                                    revert with 0, 'balance not enough'
                                if stor11 != address(arg3):
                                    revert with 0, 'invalid task'
                                if not stor15:
                                    idx = 1
                                    s = 0
                                    while idx <= arg4:
                                        _959 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(mem[0])
                                        u = mem[64] + 100
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor8)
                                        staticcall stor8.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _959 + (32 * stor6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1509 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1512 = mem[_1509]
                                        require mem[_1509] <= test266151307()
                                        require _1509 + mem[_1509] + 31 < _1509 + return_data.size
                                        _1521 = mem[_1509 + mem[_1509]]
                                        if mem[_1509 + mem[_1509]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_1509 + mem[_1509]]) + 1 < 0 or _1509 + ceil32(return_data.size) + ceil32(32 * mem[_1509 + mem[_1509]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _1509 + ceil32(return_data.size) + ceil32(32 * mem[_1509 + mem[_1509]]) + 1
                                        mem[_1509 + ceil32(return_data.size)] = _1521
                                        require return_data.size >= _1512 + (32 * _1521) + 32
                                        t = _1509 + _1512 + 32
                                        u = _1509 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1521:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 0 >= _1521:
                                            revert with 'NH{q', 50
                                        _1754 = mem[_1509 + ceil32(return_data.size) + 32]
                                        if mem[_1509 + ceil32(return_data.size) + 32] > arg1:
                                            if 1 == idx:
                                                revert with 0, 'input too large'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1775 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _1754 > mem[_1775]:
                                        _1795 = mem[64]
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = _1754
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(mem[0])
                                        u = mem[64] + 196
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_1795 + 100] = owner
                                        mem[_1795 + 132] = stor14
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1795 + (32 * stor6.length) + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1919 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1925 = mem[_1919]
                                        require mem[_1919] <= test266151307()
                                        require _1919 + mem[_1919] + 31 < _1919 + return_data.size
                                        _1931 = mem[_1919 + mem[_1919]]
                                        if mem[_1919 + mem[_1919]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_1919 + mem[_1919]]) + 1 < 0 or _1919 + ceil32(return_data.size) + ceil32(32 * mem[_1919 + mem[_1919]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _1919 + ceil32(return_data.size) + ceil32(32 * mem[_1919 + mem[_1919]]) + 1
                                        mem[_1919 + ceil32(return_data.size)] = _1931
                                        require return_data.size >= _1925 + (32 * _1931) + 32
                                        t = _1919 + _1925 + 32
                                        u = _1919 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1931:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if _1919 + _1925 + (32 * _1931) + 32 == -1:
                                            revert with 'NH{q', 17
                                        t = _1919 + _1925 + (32 * _1931) + 33
                                        s = _1754
                                        continue 
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 196] = 160
                                    mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                                    idx = 0
                                    s = 0
                                    t = (2 * ceil32(return_data.size)) + 324
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 260] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 132] = stor8
                                    mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                    require ext_code.size(stor13)
                                    call stor13.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor8, test266151307()
                                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(stor13)
                                    staticcall stor13.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[(6 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                    mem[(6 * ceil32(return_data.size)) + 164] = 0
                                    mem[(6 * ceil32(return_data.size)) + 196] = 160
                                    mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                                    mem[0] = 7
                                    idx = 0
                                    s = 0
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < stor7.length:
                                        mem[t] = stor7[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 228] = owner
                                    mem[(6 * ceil32(return_data.size)) + 260] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if arg1 < arg1 / 100000:
                                        revert with 'NH{q', 17
                                    idx = 1
                                    s = 0
                                    while idx <= arg4:
                                        _1743 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(mem[0])
                                        u = mem[64] + 100
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor8)
                                        staticcall stor8.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _1743 + (32 * stor6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1920 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1926 = mem[_1920]
                                        require mem[_1920] <= test266151307()
                                        require _1920 + mem[_1920] + 31 < _1920 + return_data.size
                                        _1932 = mem[_1920 + mem[_1920]]
                                        if mem[_1920 + mem[_1920]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_1920 + mem[_1920]]) + 1 < 0 or _1920 + ceil32(return_data.size) + ceil32(32 * mem[_1920 + mem[_1920]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _1920 + ceil32(return_data.size) + ceil32(32 * mem[_1920 + mem[_1920]]) + 1
                                        mem[_1920 + ceil32(return_data.size)] = _1932
                                        require return_data.size >= _1926 + (32 * _1932) + 32
                                        t = _1920 + _1926 + 32
                                        u = _1920 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1932:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 0 >= _1932:
                                            revert with 'NH{q', 50
                                        _2005 = mem[_1920 + ceil32(return_data.size) + 32]
                                        if mem[_1920 + ceil32(return_data.size) + 32] > arg1 - (arg1 / 100000):
                                            if 1 == idx:
                                                revert with 0, 'input too large'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2018 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _2005 > mem[_2018]:
                                        _2026 = mem[64]
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = _2005
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(mem[0])
                                        u = mem[64] + 196
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_2026 + 100] = owner
                                        mem[_2026 + 132] = stor14
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2026 + (32 * stor6.length) + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2053 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2056 = mem[_2053]
                                        require mem[_2053] <= test266151307()
                                        require _2053 + mem[_2053] + 31 < _2053 + return_data.size
                                        _2059 = mem[_2053 + mem[_2053]]
                                        if mem[_2053 + mem[_2053]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2053 + mem[_2053]]) + 1 < 0 or _2053 + ceil32(return_data.size) + ceil32(32 * mem[_2053 + mem[_2053]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2053 + ceil32(return_data.size) + ceil32(32 * mem[_2053 + mem[_2053]]) + 1
                                        mem[_2053 + ceil32(return_data.size)] = _2059
                                        require return_data.size >= _2056 + (32 * _2059) + 32
                                        t = _2053 + _2056 + 32
                                        u = _2053 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2059:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if _2053 + _2056 + (32 * _2059) + 32 == -1:
                                            revert with 'NH{q', 17
                                        t = _2053 + _2056 + (32 * _2059) + 33
                                        s = _2005
                                        continue 
                            else:
                                if creatorAddress != msg.sender:
                                    revert with 0, 'white only'
                                require ext_code.size(address(arg3))
                                staticcall address(arg3).getReserves() with:
                                        gas gas_remaining wei
                                mem[128 len 96] = ext_call.return_data[0 len 96]
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
                                mem[ceil32(return_data.size) + 132] = this.address
                                require ext_code.size(stor12)
                                staticcall stor12.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if arg1 > ext_call.return_data[0]:
                                    revert with 0, 'balance not enough'
                                if stor11 != address(arg3):
                                    revert with 0, 'invalid task'
                                if not stor15:
                                    idx = 1
                                    s = 0
                                    while idx <= arg4:
                                        _960 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(mem[0])
                                        u = mem[64] + 100
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor8)
                                        staticcall stor8.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _960 + (32 * stor6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1510 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1513 = mem[_1510]
                                        require mem[_1510] <= test266151307()
                                        require _1510 + mem[_1510] + 31 < _1510 + return_data.size
                                        _1522 = mem[_1510 + mem[_1510]]
                                        if mem[_1510 + mem[_1510]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_1510 + mem[_1510]]) + 1 < 0 or _1510 + ceil32(return_data.size) + ceil32(32 * mem[_1510 + mem[_1510]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _1510 + ceil32(return_data.size) + ceil32(32 * mem[_1510 + mem[_1510]]) + 1
                                        mem[_1510 + ceil32(return_data.size)] = _1522
                                        require return_data.size >= _1513 + (32 * _1522) + 32
                                        t = _1510 + _1513 + 32
                                        u = _1510 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1522:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 0 >= _1522:
                                            revert with 'NH{q', 50
                                        _1756 = mem[_1510 + ceil32(return_data.size) + 32]
                                        if mem[_1510 + ceil32(return_data.size) + 32] > arg1:
                                            if 1 == idx:
                                                revert with 0, 'input too large'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1777 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _1756 > mem[_1777]:
                                        _1796 = mem[64]
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = _1756
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(mem[0])
                                        u = mem[64] + 196
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_1796 + 100] = owner
                                        mem[_1796 + 132] = stor14
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1796 + (32 * stor6.length) + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1921 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1927 = mem[_1921]
                                        require mem[_1921] <= test266151307()
                                        require _1921 + mem[_1921] + 31 < _1921 + return_data.size
                                        _1933 = mem[_1921 + mem[_1921]]
                                        if mem[_1921 + mem[_1921]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_1921 + mem[_1921]]) + 1 < 0 or _1921 + ceil32(return_data.size) + ceil32(32 * mem[_1921 + mem[_1921]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _1921 + ceil32(return_data.size) + ceil32(32 * mem[_1921 + mem[_1921]]) + 1
                                        mem[_1921 + ceil32(return_data.size)] = _1933
                                        require return_data.size >= _1927 + (32 * _1933) + 32
                                        t = _1921 + _1927 + 32
                                        u = _1921 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1933:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if _1921 + _1927 + (32 * _1933) + 32 == -1:
                                            revert with 'NH{q', 17
                                        t = _1921 + _1927 + (32 * _1933) + 33
                                        s = _1756
                                        continue 
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 196] = 160
                                    mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                                    idx = 0
                                    s = 0
                                    t = (2 * ceil32(return_data.size)) + 324
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 260] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 132] = stor8
                                    mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                    require ext_code.size(stor13)
                                    call stor13.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor8, test266151307()
                                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(stor13)
                                    staticcall stor13.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[(6 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                    mem[(6 * ceil32(return_data.size)) + 164] = 0
                                    mem[(6 * ceil32(return_data.size)) + 196] = 160
                                    mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                                    mem[0] = 7
                                    idx = 0
                                    s = 0
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < stor7.length:
                                        mem[t] = stor7[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 228] = owner
                                    mem[(6 * ceil32(return_data.size)) + 260] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if arg1 < arg1 / 100000:
                                        revert with 'NH{q', 17
                                    idx = 1
                                    s = 0
                                    while idx <= arg4:
                                        _1745 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(mem[0])
                                        u = mem[64] + 100
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor8)
                                        staticcall stor8.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _1745 + (32 * stor6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1922 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1928 = mem[_1922]
                                        require mem[_1922] <= test266151307()
                                        require _1922 + mem[_1922] + 31 < _1922 + return_data.size
                                        _1934 = mem[_1922 + mem[_1922]]
                                        if mem[_1922 + mem[_1922]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_1922 + mem[_1922]]) + 1 < 0 or _1922 + ceil32(return_data.size) + ceil32(32 * mem[_1922 + mem[_1922]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _1922 + ceil32(return_data.size) + ceil32(32 * mem[_1922 + mem[_1922]]) + 1
                                        mem[_1922 + ceil32(return_data.size)] = _1934
                                        require return_data.size >= _1928 + (32 * _1934) + 32
                                        t = _1922 + _1928 + 32
                                        u = _1922 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1934:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 0 >= _1934:
                                            revert with 'NH{q', 50
                                        _2006 = mem[_1922 + ceil32(return_data.size) + 32]
                                        if mem[_1922 + ceil32(return_data.size) + 32] > arg1 - (arg1 / 100000):
                                            if 1 == idx:
                                                revert with 0, 'input too large'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2020 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _2006 > mem[_2020]:
                                        _2027 = mem[64]
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = _2006
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(mem[0])
                                        u = mem[64] + 196
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_2027 + 100] = owner
                                        mem[_2027 + 132] = stor14
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2027 + (32 * stor6.length) + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2054 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2057 = mem[_2054]
                                        require mem[_2054] <= test266151307()
                                        require _2054 + mem[_2054] + 31 < _2054 + return_data.size
                                        _2060 = mem[_2054 + mem[_2054]]
                                        if mem[_2054 + mem[_2054]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2054 + mem[_2054]]) + 1 < 0 or _2054 + ceil32(return_data.size) + ceil32(32 * mem[_2054 + mem[_2054]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2054 + ceil32(return_data.size) + ceil32(32 * mem[_2054 + mem[_2054]]) + 1
                                        mem[_2054 + ceil32(return_data.size)] = _2060
                                        require return_data.size >= _2057 + (32 * _2060) + 32
                                        t = _2054 + _2057 + 32
                                        u = _2054 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2060:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if _2054 + _2057 + (32 * _2060) + 32 == -1:
                                            revert with 'NH{q', 17
                                        t = _2054 + _2057 + (32 * _2060) + 33
                                        s = _2006
                                        continue 
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg3 == address(arg3)
                    mem[32] = 2
                    if stor2[msg.sender]:
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getReserves() with:
                                gas gas_remaining wei
                        mem[128 len 96] = ext_call.return_data[0 len 96]
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
                        mem[ceil32(return_data.size) + 132] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > ext_call.return_data[0]:
                            revert with 0, 'balance not enough'
                        if stor11 != address(arg3):
                            revert with 0, 'invalid task'
                        if not stor15:
                            require ext_code.size(stor13)
                            staticcall stor13.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = (4 * ceil32(return_data.size)) + 324
                            while idx < stor6.length:
                                mem[t] = stor6[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(stor8)
                            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg1, arg2, Array(len=stor6.length, data=mem[(4 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), owner, stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor13)
                            staticcall stor13.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 < arg2:
                                revert with 0, 'output not enough'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 196] = 160
                            mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                            idx = 0
                            s = 0
                            t = (2 * ceil32(return_data.size)) + 324
                            while idx < stor6.length:
                                mem[t] = stor6[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 228] = this.address
                            mem[(2 * ceil32(return_data.size)) + 260] = stor14
                            require ext_code.size(stor8)
                            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stor8
                            mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                            require ext_code.size(stor13)
                            call stor13.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor8, test266151307()
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 132] = this.address
                            require ext_code.size(stor13)
                            staticcall stor13.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(6 * ceil32(return_data.size)) + 164] = 0
                            mem[(6 * ceil32(return_data.size)) + 196] = 160
                            mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                            idx = 0
                            s = 0
                            t = (6 * ceil32(return_data.size)) + 324
                            while idx < stor7.length:
                                mem[t] = stor7[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 228] = owner
                            mem[(6 * ceil32(return_data.size)) + 260] = stor14
                            require ext_code.size(stor8)
                            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < arg1 / 100000:
                                revert with 'NH{q', 17
                            mem[(6 * ceil32(return_data.size)) + 132] = owner
                            require ext_code.size(stor13)
                            staticcall stor13.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            mem[(7 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 132] = arg1 - (arg1 / 100000)
                            mem[(7 * ceil32(return_data.size)) + 164] = arg2
                            mem[(7 * ceil32(return_data.size)) + 196] = 160
                            mem[(7 * ceil32(return_data.size)) + 292] = stor6.length
                            mem[0] = 6
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor6.length:
                                mem[t] = stor[s + sha3(mem[0])]
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 228] = owner
                            mem[(7 * ceil32(return_data.size)) + 260] = stor14
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + (32 * stor6.length) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = owner
                            require ext_code.size(stor13)
                            staticcall stor13.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1779 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if ext_call.return_data[0] > mem[_1779]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[_1779] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if mem[_1779] - ext_call.return_data[0] < arg2:
                                revert with 0, 'output not enough'
                    else:
                        if msg.sender == owner:
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).getReserves() with:
                                    gas gas_remaining wei
                            mem[128 len 96] = ext_call.return_data[0 len 96]
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
                            mem[ceil32(return_data.size) + 132] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > ext_call.return_data[0]:
                                revert with 0, 'balance not enough'
                            if stor11 != address(arg3):
                                revert with 0, 'invalid task'
                            if not stor15:
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                s = 0
                                t = (4 * ceil32(return_data.size)) + 324
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg1, arg2, Array(len=stor6.length, data=mem[(4 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), owner, stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 < arg2:
                                    revert with 0, 'output not enough'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 196] = 160
                                mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                                idx = 0
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 324
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(2 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 132] = stor8
                                mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                require ext_code.size(stor13)
                                call stor13.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor8, test266151307()
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(6 * ceil32(return_data.size)) + 164] = 0
                                mem[(6 * ceil32(return_data.size)) + 196] = 160
                                mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                                idx = 0
                                s = 0
                                t = (6 * ceil32(return_data.size)) + 324
                                while idx < stor7.length:
                                    mem[t] = stor7[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 228] = owner
                                mem[(6 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < arg1 / 100000:
                                    revert with 'NH{q', 17
                                mem[(6 * ceil32(return_data.size)) + 132] = owner
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[(7 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 132] = arg1 - (arg1 / 100000)
                                mem[(7 * ceil32(return_data.size)) + 164] = arg2
                                mem[(7 * ceil32(return_data.size)) + 196] = 160
                                mem[(7 * ceil32(return_data.size)) + 292] = stor6.length
                                mem[0] = 6
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor6.length:
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 228] = owner
                                mem[(7 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + (32 * stor6.length) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = owner
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1780 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if ext_call.return_data[0] > mem[_1780]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[_1780] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if mem[_1780] - ext_call.return_data[0] < arg2:
                                    revert with 0, 'output not enough'
                        else:
                            if creatorAddress != msg.sender:
                                revert with 0, 'white only'
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).getReserves() with:
                                    gas gas_remaining wei
                            mem[128 len 96] = ext_call.return_data[0 len 96]
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
                            mem[ceil32(return_data.size) + 132] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > ext_call.return_data[0]:
                                revert with 0, 'balance not enough'
                            if stor11 != address(arg3):
                                revert with 0, 'invalid task'
                            if not stor15:
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                s = 0
                                t = (4 * ceil32(return_data.size)) + 324
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg1, arg2, Array(len=stor6.length, data=mem[(4 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), owner, stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 < arg2:
                                    revert with 0, 'output not enough'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 196] = 160
                                mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                                idx = 0
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 324
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(2 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 132] = stor8
                                mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                require ext_code.size(stor13)
                                call stor13.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor8, test266151307()
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(6 * ceil32(return_data.size)) + 164] = 0
                                mem[(6 * ceil32(return_data.size)) + 196] = 160
                                mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                                idx = 0
                                s = 0
                                t = (6 * ceil32(return_data.size)) + 324
                                while idx < stor7.length:
                                    mem[t] = stor7[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 228] = owner
                                mem[(6 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < arg1 / 100000:
                                    revert with 'NH{q', 17
                                mem[(6 * ceil32(return_data.size)) + 132] = owner
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[(7 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 132] = arg1 - (arg1 / 100000)
                                mem[(7 * ceil32(return_data.size)) + 164] = arg2
                                mem[(7 * ceil32(return_data.size)) + 196] = 160
                                mem[(7 * ceil32(return_data.size)) + 292] = stor6.length
                                mem[0] = 6
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor6.length:
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 228] = owner
                                mem[(7 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + (32 * stor6.length) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = owner
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1781 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if ext_call.return_data[0] > mem[_1781]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[_1781] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if mem[_1781] - ext_call.return_data[0] < arg2:
                                    revert with 0, 'output not enough'
}



}
