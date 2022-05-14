contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 delayTime;
uint256 presaleStartTime;
address sub_7d71a7afAddress;
uint256 sub_0013ee24;
uint256 sub_cd2cf726;
uint256 totalMIMAmount;
uint256 sub_b898d182;
address sub_cf3085f6Address;
address stor9;
uint256 tokenPrice;
uint256 sub_a5496921;
uint256 tokenSold;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint256 stor15;

function sub_0013ee24(?) payable {
    return sub_0013ee24
}

function tokenSold() payable {
    return tokenSold
}

function totalMIMAmount() payable {
    return totalMIMAmount
}

function sub_7d71a7af(?) payable {
    return sub_7d71a7afAddress
}

function delayTime() payable {
    return delayTime
}

function tokenPrice() payable {
    return tokenPrice
}

function owner() payable {
    return owner
}

function sub_a5496921(?) payable {
    return sub_a5496921
}

function presaleStartTime() payable {
    return presaleStartTime
}

function sub_b898d182(?) payable {
    return sub_b898d182
}

function sub_cd2cf726(?) payable {
    return sub_cd2cf726
}

function sub_cf3085f6(?) payable {
    return sub_cf3085f6Address
}

function isPresaleOpen() payable {
    return bool(uint8(stor0.field_160))
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function _fallback() payable {
    revert
}

function sub_64f837ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
}

function sub_6845b73d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cd2cf726 = arg1
}

function sub_d4f4e601(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0013ee24 = arg1
}

function sub_dc618c1a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b898d182 = arg1
}

function setRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = arg1
}

function setDelayTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    delayTime = arg1
}

function setPresaleStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleStartTime = arg1
}

function sub_03d89b12(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7d71a7afAddress = address(arg1)
}

function setPresaleTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cf3085f6Address = arg1
}

function closePresale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Yet presale was not start'
    Mask(96, 0, stor0.field_160) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setWhitelist(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getUnsoldTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot get tokens until the presale is closed.'
    require ext_code.size(sub_cf3085f6Address)
    staticcall sub_cf3085f6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_cf3085f6Address)
    call sub_cf3085f6Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= presaleStartTime:
        revert with 0, 'Presale is not open yet'
    Mask(96, 0, stor0.field_160) = 1
    if block.timestamp < presaleStartTime:
        revert with 'NH{q', 17
    if block.timestamp - presaleStartTime <= delayTime:
        if not stor13[address(msg.sender)]:
            revert with 0, 'You were not registryed'
    if arg1 < sub_0013ee24:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to sell at least some min amount'
    if stor15[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if stor15[address(msg.sender)] + arg1 > sub_cd2cf726:
        revert with 0, 'It was over max MIM Llimit'
    if totalMIMAmount > sub_b898d182:
        revert with 0, 'It was over total MIM amount'
    require ext_code.size(sub_7d71a7afAddress)
    staticcall sub_7d71a7afAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Check the token allowance'
    require ext_code.size(sub_7d71a7afAddress)
    call sub_7d71a7afAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor9, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not sub_a5496921:
        if not arg1:
            if not tokenPrice:
                revert with 'NH{q', 18
            require ext_code.size(sub_cf3085f6Address)
            staticcall sub_cf3085f6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 / tokenPrice > ext_call.return_data[0]:
                revert with 0, 'Insufficient balance'
            require ext_code.size(sub_cf3085f6Address)
            call sub_cf3085f6Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / tokenPrice
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor15[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            stor15[address(msg.sender)] += arg1
            stor14[address(msg.sender)] = 1
            if tokenSold > -(0 / tokenPrice) - 1:
                revert with 'NH{q', 17
            tokenSold += 0 / tokenPrice
        else:
            if arg1 and 1 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 / arg1 != 1:
                revert with 'NH{q', 1
            if not arg1:
                if not tokenPrice:
                    revert with 'NH{q', 18
                require ext_code.size(sub_cf3085f6Address)
                staticcall sub_cf3085f6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 / tokenPrice > ext_call.return_data[0]:
                    revert with 0, 'Insufficient balance'
                require ext_code.size(sub_cf3085f6Address)
                call sub_cf3085f6Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / tokenPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stor15[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor15[address(msg.sender)] += arg1
                stor14[address(msg.sender)] = 1
                if tokenSold > -(0 / tokenPrice) - 1:
                    revert with 'NH{q', 17
                tokenSold += 0 / tokenPrice
            else:
                if arg1 and 10^9 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if 10^9 * arg1 / arg1 != 10^9:
                    revert with 'NH{q', 1
                if not tokenPrice:
                    revert with 'NH{q', 18
                require ext_code.size(sub_cf3085f6Address)
                staticcall sub_cf3085f6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 10^9 * arg1 / 10^18 / tokenPrice > ext_call.return_data[0]:
                    revert with 0, 'Insufficient balance'
                require ext_code.size(sub_cf3085f6Address)
                call sub_cf3085f6Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 10^9 * arg1 / 10^18 / tokenPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stor15[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor15[address(msg.sender)] += arg1
                stor14[address(msg.sender)] = 1
                if tokenSold > -(10^9 * arg1 / 10^18 / tokenPrice) - 1:
                    revert with 'NH{q', 17
                tokenSold += 10^9 * arg1 / 10^18 / tokenPrice
    else:
        if bool(bool(sub_a5496921 < 78)) or bool(bool(sub_a5496921 < 32)):
            if 10^sub_a5496921 > -1:
                revert with 'NH{q', 17
            if not arg1:
                if not tokenPrice:
                    revert with 'NH{q', 18
                require ext_code.size(sub_cf3085f6Address)
                staticcall sub_cf3085f6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 / tokenPrice > ext_call.return_data[0]:
                    revert with 0, 'Insufficient balance'
                require ext_code.size(sub_cf3085f6Address)
                call sub_cf3085f6Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / tokenPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stor15[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor15[address(msg.sender)] += arg1
                stor14[address(msg.sender)] = 1
                if tokenSold > -(0 / tokenPrice) - 1:
                    revert with 'NH{q', 17
                tokenSold += 0 / tokenPrice
            else:
                if arg1 and 10^sub_a5496921 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * 10^sub_a5496921 / arg1 != 10^sub_a5496921:
                    revert with 'NH{q', 1
                if not arg1 * 10^sub_a5496921:
                    if not tokenPrice:
                        revert with 'NH{q', 18
                    require ext_code.size(sub_cf3085f6Address)
                    staticcall sub_cf3085f6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 / tokenPrice > ext_call.return_data[0]:
                        revert with 0, 'Insufficient balance'
                    require ext_code.size(sub_cf3085f6Address)
                    call sub_cf3085f6Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / tokenPrice
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stor15[address(msg.sender)] > -arg1 - 1:
                        revert with 'NH{q', 17
                    stor15[address(msg.sender)] += arg1
                    stor14[address(msg.sender)] = 1
                    if tokenSold > -(0 / tokenPrice) - 1:
                        revert with 'NH{q', 17
                    tokenSold += 0 / tokenPrice
                else:
                    if arg1 * 10^sub_a5496921 and 10^9 > -1 / arg1 * 10^sub_a5496921:
                        revert with 'NH{q', 17
                    if not arg1 * 10^sub_a5496921:
                        revert with 'NH{q', 18
                    if 10^9 * arg1 * 10^sub_a5496921 / arg1 * 10^sub_a5496921 != 10^9:
                        revert with 'NH{q', 1
                    if not tokenPrice:
                        revert with 'NH{q', 18
                    require ext_code.size(sub_cf3085f6Address)
                    staticcall sub_cf3085f6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 10^9 * arg1 * 10^sub_a5496921 / 10^18 / tokenPrice > ext_call.return_data[0]:
                        revert with 0, 'Insufficient balance'
                    require ext_code.size(sub_cf3085f6Address)
                    call sub_cf3085f6Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^9 * arg1 * 10^sub_a5496921 / 10^18 / tokenPrice
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stor15[address(msg.sender)] > -arg1 - 1:
                        revert with 'NH{q', 17
                    stor15[address(msg.sender)] += arg1
                    stor14[address(msg.sender)] = 1
                    if tokenSold > -(10^9 * arg1 * 10^sub_a5496921 / 10^18 / tokenPrice) - 1:
                        revert with 'NH{q', 17
                    tokenSold += 10^9 * arg1 * 10^sub_a5496921 / 10^18 / tokenPrice
        else:
            s = 10
            t = 1
            idx = sub_a5496921
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
            if not arg1:
                if not tokenPrice:
                    revert with 'NH{q', 18
                require ext_code.size(sub_cf3085f6Address)
                staticcall sub_cf3085f6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 / tokenPrice > ext_call.return_data[0]:
                    revert with 0, 'Insufficient balance'
                require ext_code.size(sub_cf3085f6Address)
                call sub_cf3085f6Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / tokenPrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stor15[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor15[address(msg.sender)] += arg1
                stor14[address(msg.sender)] = 1
                if tokenSold > -(0 / tokenPrice) - 1:
                    revert with 'NH{q', 17
                tokenSold += 0 / tokenPrice
            else:
                if arg1 and t * s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t * s / arg1 != t * s:
                    revert with 'NH{q', 1
                if not arg1 * t * s:
                    if not tokenPrice:
                        revert with 'NH{q', 18
                    require ext_code.size(sub_cf3085f6Address)
                    staticcall sub_cf3085f6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 / tokenPrice > ext_call.return_data[0]:
                        revert with 0, 'Insufficient balance'
                    require ext_code.size(sub_cf3085f6Address)
                    call sub_cf3085f6Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / tokenPrice
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stor15[address(msg.sender)] > -arg1 - 1:
                        revert with 'NH{q', 17
                    stor15[address(msg.sender)] += arg1
                    stor14[address(msg.sender)] = 1
                    if tokenSold > -(0 / tokenPrice) - 1:
                        revert with 'NH{q', 17
                    tokenSold += 0 / tokenPrice
                else:
                    if arg1 * t * s and 10^9 > -1 / arg1 * t * s:
                        revert with 'NH{q', 17
                    if not arg1 * t * s:
                        revert with 'NH{q', 18
                    if 10^9 * arg1 * t * s / arg1 * t * s != 10^9:
                        revert with 'NH{q', 1
                    if not tokenPrice:
                        revert with 'NH{q', 18
                    require ext_code.size(sub_cf3085f6Address)
                    staticcall sub_cf3085f6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 10^9 * arg1 * t * s / 10^18 / tokenPrice > ext_call.return_data[0]:
                        revert with 0, 'Insufficient balance'
                    require ext_code.size(sub_cf3085f6Address)
                    call sub_cf3085f6Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^9 * arg1 * t * s / 10^18 / tokenPrice
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stor15[address(msg.sender)] > -arg1 - 1:
                        revert with 'NH{q', 17
                    stor15[address(msg.sender)] += arg1
                    stor14[address(msg.sender)] = 1
                    if tokenSold > -(10^9 * arg1 * t * s / 10^18 / tokenPrice) - 1:
                        revert with 'NH{q', 17
                    tokenSold += 10^9 * arg1 * t * s / 10^18 / tokenPrice
    if totalMIMAmount > -arg1 - 1:
        revert with 'NH{q', 17
    totalMIMAmount += arg1
    emit Presale(arg1);
}



}
