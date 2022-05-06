contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 unlockTime;
address mimTokenAddress;
address pTokenAddress;
uint256 pTokenDecimal;
address stor5;
uint256 tokenSold;
uint256 totalMIMAmount;
uint256 minMimLimit;
uint256 maxMimLimit;
uint256 maxMimLimitVip;
uint256 tokenPrice;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint256 stor14;
mapping of struct _usersSaleInfo;

function unlockTime() payable {
    return unlockTime
}

function maxMimLimitVip() payable {
    return maxMimLimitVip
}

function tokenSold() payable {
    return tokenSold
}

function pTokenAddress() payable {
    return pTokenAddress
}

function minMimLimit() payable {
    return minMimLimit
}

function totalMIMAmount() payable {
    return totalMIMAmount
}

function mimTokenAddress() payable {
    return mimTokenAddress
}

function maxMimLimit() payable {
    return maxMimLimit
}

function _usersSaleInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _usersSaleInfo[arg1].field_0, _usersSaleInfo[arg1].field_256
}

function tokenPrice() payable {
    return tokenPrice
}

function owner() payable {
    return owner
}

function pTokenDecimal() payable {
    return pTokenDecimal
}

function isPresaleOpen() payable {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function setRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
}

function setMaxMimLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMimLimit = arg1
}

function setMinMimLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minMimLimit = arg1
}

function setTokenPriceInMim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
}

function setMaxVipMimLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMimLimitVip = arg1
}

function setPresaleTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pTokenAddress = arg1
}

function startPresale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Presale is open'
    Mask(96, 0, stor0.field_160) = 1
}

function closePrsale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Presale is not open yet.'
    Mask(96, 0, stor0.field_160) = 0
}

function setUnlockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require block.timestamp < arg1
    unlockTime = arg1
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Token address zero not allowed.'
    mimTokenAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claim() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Presale is not closed yet'
    require _usersSaleInfo[address(msg.sender)].field_0 == msg.sender
    require unlockTime <= block.timestamp
    _usersSaleInfo[address(msg.sender)].field_256 = 0
    require ext_code.size(pTokenAddress)
    call pTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _usersSaleInfo[address(msg.sender)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit claimed(msg.sender, _usersSaleInfo[address(msg.sender)].field_256);
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
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function setWhitelistDouble(address[] arg1, bool arg2) payable {
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
    require ext_code.size(mimTokenAddress)
    staticcall mimTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(mimTokenAddress)
    call mimTokenAddress.0xa9059cbb with:
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
    if not uint8(stor0.field_160):
        revert with 0, 'Presale is not open yet'
    require bool(stor12[address(msg.sender)]) == 1
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to sell at least some tokens'
    if stor14[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    require stor14[address(msg.sender)] + arg1 <= maxMimLimit
    require ext_code.size(mimTokenAddress)
    staticcall mimTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Check the token allowance'
    require ext_code.size(mimTokenAddress)
    call mimTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor5, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not pTokenDecimal:
        if not tokenPrice:
            revert with 'NH{q', 18
        if not arg1 / tokenPrice:
            if _usersSaleInfo[address(msg.sender)].field_0:
                if _usersSaleInfo[address(msg.sender)].field_256 > -1:
                    revert with 'NH{q', 17
            else:
                _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                _usersSaleInfo[address(msg.sender)].field_256 = 0
            if stor14[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            stor14[address(msg.sender)] += arg1
            if tokenSold > -1:
                revert with 'NH{q', 17
        else:
            if arg1 / tokenPrice and 1 > -1 / arg1 / tokenPrice:
                revert with 'NH{q', 17
            if not arg1 / tokenPrice:
                revert with 'NH{q', 18
            if arg1 / tokenPrice / arg1 / tokenPrice != 1:
                revert with 'NH{q', 1
            if _usersSaleInfo[address(msg.sender)].field_0:
                if _usersSaleInfo[address(msg.sender)].field_256 > -(arg1 / tokenPrice) - 1:
                    revert with 'NH{q', 17
                _usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice
            else:
                _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                _usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice
            if stor14[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            stor14[address(msg.sender)] += arg1
            if tokenSold > -(arg1 / tokenPrice) - 1:
                revert with 'NH{q', 17
            tokenSold += arg1 / tokenPrice
    else:
        if bool(bool(pTokenDecimal < 78)) or bool(bool(pTokenDecimal < 32)):
            if 10^pTokenDecimal > -1:
                revert with 'NH{q', 17
            if not tokenPrice:
                revert with 'NH{q', 18
            if not arg1 / tokenPrice:
                if _usersSaleInfo[address(msg.sender)].field_0:
                    if _usersSaleInfo[address(msg.sender)].field_256 > -1:
                        revert with 'NH{q', 17
                else:
                    _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    _usersSaleInfo[address(msg.sender)].field_256 = 0
                if stor14[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor14[address(msg.sender)] += arg1
                if tokenSold > -1:
                    revert with 'NH{q', 17
            else:
                if arg1 / tokenPrice and 10^pTokenDecimal > -1 / arg1 / tokenPrice:
                    revert with 'NH{q', 17
                if not arg1 / tokenPrice:
                    revert with 'NH{q', 18
                if arg1 / tokenPrice * 10^pTokenDecimal / arg1 / tokenPrice != 10^pTokenDecimal:
                    revert with 'NH{q', 1
                if _usersSaleInfo[address(msg.sender)].field_0:
                    if _usersSaleInfo[address(msg.sender)].field_256 > (-1 * arg1 / tokenPrice * 10^pTokenDecimal) - 1:
                        revert with 'NH{q', 17
                    _usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice * 10^pTokenDecimal
                else:
                    _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    _usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice * 10^pTokenDecimal
                if stor14[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor14[address(msg.sender)] += arg1
                if tokenSold > (-1 * arg1 / tokenPrice * 10^pTokenDecimal) - 1:
                    revert with 'NH{q', 17
                tokenSold += arg1 / tokenPrice * 10^pTokenDecimal
        else:
            s = 10
            t = 1
            idx = pTokenDecimal
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
            if not tokenPrice:
                revert with 'NH{q', 18
            if not arg1 / tokenPrice:
                if _usersSaleInfo[address(msg.sender)].field_0:
                    if _usersSaleInfo[address(msg.sender)].field_256 > -1:
                        revert with 'NH{q', 17
                else:
                    _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    _usersSaleInfo[address(msg.sender)].field_256 = 0
                if stor14[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor14[address(msg.sender)] += arg1
                if tokenSold > -1:
                    revert with 'NH{q', 17
            else:
                if arg1 / tokenPrice and t * s > -1 / arg1 / tokenPrice:
                    revert with 'NH{q', 17
                if not arg1 / tokenPrice:
                    revert with 'NH{q', 18
                if arg1 / tokenPrice * t * s / arg1 / tokenPrice != t * s:
                    revert with 'NH{q', 1
                if _usersSaleInfo[address(msg.sender)].field_0:
                    if _usersSaleInfo[address(msg.sender)].field_256 > (-1 * arg1 / tokenPrice * t * s) - 1:
                        revert with 'NH{q', 17
                    _usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice * t * s
                else:
                    _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    _usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice * t * s
                if stor14[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor14[address(msg.sender)] += arg1
                if tokenSold > (-1 * arg1 / tokenPrice * t * s) - 1:
                    revert with 'NH{q', 17
                tokenSold += arg1 / tokenPrice * t * s
    if totalMIMAmount > -arg1 - 1:
        revert with 'NH{q', 17
    totalMIMAmount += arg1
    emit Presale(arg1);
}

function vipBuy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_160):
        revert with 0, 'Presale is not open yet'
    require bool(stor13[address(msg.sender)]) == 1
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to sell at least some tokens'
    if stor14[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    require stor14[address(msg.sender)] + arg1 <= maxMimLimitVip
    require ext_code.size(mimTokenAddress)
    staticcall mimTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Check the token allowance'
    require ext_code.size(mimTokenAddress)
    call mimTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor5, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not pTokenDecimal:
        if not tokenPrice:
            revert with 'NH{q', 18
        if not arg1 / tokenPrice:
            if _usersSaleInfo[address(msg.sender)].field_0:
                if _usersSaleInfo[address(msg.sender)].field_256 > -1:
                    revert with 'NH{q', 17
            else:
                _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                _usersSaleInfo[address(msg.sender)].field_256 = 0
            if stor14[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            stor14[address(msg.sender)] += arg1
            if tokenSold > -1:
                revert with 'NH{q', 17
        else:
            if arg1 / tokenPrice and 1 > -1 / arg1 / tokenPrice:
                revert with 'NH{q', 17
            if not arg1 / tokenPrice:
                revert with 'NH{q', 18
            if arg1 / tokenPrice / arg1 / tokenPrice != 1:
                revert with 'NH{q', 1
            if _usersSaleInfo[address(msg.sender)].field_0:
                if _usersSaleInfo[address(msg.sender)].field_256 > -(arg1 / tokenPrice) - 1:
                    revert with 'NH{q', 17
                _usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice
            else:
                _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                _usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice
            if stor14[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            stor14[address(msg.sender)] += arg1
            if tokenSold > -(arg1 / tokenPrice) - 1:
                revert with 'NH{q', 17
            tokenSold += arg1 / tokenPrice
    else:
        if bool(bool(pTokenDecimal < 78)) or bool(bool(pTokenDecimal < 32)):
            if 10^pTokenDecimal > -1:
                revert with 'NH{q', 17
            if not tokenPrice:
                revert with 'NH{q', 18
            if not arg1 / tokenPrice:
                if _usersSaleInfo[address(msg.sender)].field_0:
                    if _usersSaleInfo[address(msg.sender)].field_256 > -1:
                        revert with 'NH{q', 17
                else:
                    _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    _usersSaleInfo[address(msg.sender)].field_256 = 0
                if stor14[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor14[address(msg.sender)] += arg1
                if tokenSold > -1:
                    revert with 'NH{q', 17
            else:
                if arg1 / tokenPrice and 10^pTokenDecimal > -1 / arg1 / tokenPrice:
                    revert with 'NH{q', 17
                if not arg1 / tokenPrice:
                    revert with 'NH{q', 18
                if arg1 / tokenPrice * 10^pTokenDecimal / arg1 / tokenPrice != 10^pTokenDecimal:
                    revert with 'NH{q', 1
                if _usersSaleInfo[address(msg.sender)].field_0:
                    if _usersSaleInfo[address(msg.sender)].field_256 > (-1 * arg1 / tokenPrice * 10^pTokenDecimal) - 1:
                        revert with 'NH{q', 17
                    _usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice * 10^pTokenDecimal
                else:
                    _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    _usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice * 10^pTokenDecimal
                if stor14[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor14[address(msg.sender)] += arg1
                if tokenSold > (-1 * arg1 / tokenPrice * 10^pTokenDecimal) - 1:
                    revert with 'NH{q', 17
                tokenSold += arg1 / tokenPrice * 10^pTokenDecimal
        else:
            s = 10
            t = 1
            idx = pTokenDecimal
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
            if not tokenPrice:
                revert with 'NH{q', 18
            if not arg1 / tokenPrice:
                if _usersSaleInfo[address(msg.sender)].field_0:
                    if _usersSaleInfo[address(msg.sender)].field_256 > -1:
                        revert with 'NH{q', 17
                else:
                    _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    _usersSaleInfo[address(msg.sender)].field_256 = 0
                if stor14[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor14[address(msg.sender)] += arg1
                if tokenSold > -1:
                    revert with 'NH{q', 17
            else:
                if arg1 / tokenPrice and t * s > -1 / arg1 / tokenPrice:
                    revert with 'NH{q', 17
                if not arg1 / tokenPrice:
                    revert with 'NH{q', 18
                if arg1 / tokenPrice * t * s / arg1 / tokenPrice != t * s:
                    revert with 'NH{q', 1
                if _usersSaleInfo[address(msg.sender)].field_0:
                    if _usersSaleInfo[address(msg.sender)].field_256 > (-1 * arg1 / tokenPrice * t * s) - 1:
                        revert with 'NH{q', 17
                    _usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice * t * s
                else:
                    _usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    _usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice * t * s
                if stor14[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor14[address(msg.sender)] += arg1
                if tokenSold > (-1 * arg1 / tokenPrice * t * s) - 1:
                    revert with 'NH{q', 17
                tokenSold += arg1 / tokenPrice * t * s
    if totalMIMAmount > -arg1 - 1:
        revert with 'NH{q', 17
    totalMIMAmount += arg1
    emit Presale(arg1);
}



}
