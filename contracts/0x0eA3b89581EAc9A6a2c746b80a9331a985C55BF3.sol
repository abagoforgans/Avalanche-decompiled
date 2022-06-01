contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address tokenAddress;
address pTokenAddress;
uint256 pTokenDecimal;
address stor4;
uint256 tokenSold;
uint256 totalMIMAmount;
uint256 minMimLimit;
uint256 tokenPrice;
mapping of uint256 stor9;
mapping of struct usersSaleInfo;

function tokenSold() payable {
    return tokenSold
}

function pTokenAddress() payable {
    return pTokenAddress
}

function minMimLimit() payable {
    return minMimLimit
}

function usersSaleInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return usersSaleInfo[arg1].field_0, usersSaleInfo[arg1].field_256
}

function totalMIMAmount() payable {
    return totalMIMAmount
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

function TokenAddress() payable {
    return tokenAddress
}

function isPresaleOpen() payable {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function setRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function setMinMimLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minMimLimit = arg1
}

function setPresaleTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pTokenAddress = arg1
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Token address zero not allowed.'
    tokenAddress = arg1
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= minMimLimit:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to sell at least some min amount'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Check the token allowance'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not pTokenDecimal:
        if not tokenPrice:
            revert with 'NH{q', 18
        if not arg1 / tokenPrice:
            if usersSaleInfo[address(msg.sender)].field_0:
                if usersSaleInfo[address(msg.sender)].field_256 > -1:
                    revert with 'NH{q', 17
            else:
                usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                usersSaleInfo[address(msg.sender)].field_256 = 0
            if stor9[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            stor9[address(msg.sender)] += arg1
            if tokenSold > -1:
                revert with 'NH{q', 17
        else:
            if arg1 / tokenPrice and 1 > -1 / arg1 / tokenPrice:
                revert with 'NH{q', 17
            if not arg1 / tokenPrice:
                revert with 'NH{q', 18
            if arg1 / tokenPrice / arg1 / tokenPrice != 1:
                revert with 'NH{q', 1
            if usersSaleInfo[address(msg.sender)].field_0:
                if usersSaleInfo[address(msg.sender)].field_256 > -(arg1 / tokenPrice) - 1:
                    revert with 'NH{q', 17
                usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice
            else:
                usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice
            if stor9[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            stor9[address(msg.sender)] += arg1
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
                if usersSaleInfo[address(msg.sender)].field_0:
                    if usersSaleInfo[address(msg.sender)].field_256 > -1:
                        revert with 'NH{q', 17
                else:
                    usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    usersSaleInfo[address(msg.sender)].field_256 = 0
                if stor9[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor9[address(msg.sender)] += arg1
                if tokenSold > -1:
                    revert with 'NH{q', 17
            else:
                if arg1 / tokenPrice and 10^pTokenDecimal > -1 / arg1 / tokenPrice:
                    revert with 'NH{q', 17
                if not arg1 / tokenPrice:
                    revert with 'NH{q', 18
                if arg1 / tokenPrice * 10^pTokenDecimal / arg1 / tokenPrice != 10^pTokenDecimal:
                    revert with 'NH{q', 1
                if usersSaleInfo[address(msg.sender)].field_0:
                    if usersSaleInfo[address(msg.sender)].field_256 > (-1 * arg1 / tokenPrice * 10^pTokenDecimal) - 1:
                        revert with 'NH{q', 17
                    usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice * 10^pTokenDecimal
                else:
                    usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice * 10^pTokenDecimal
                if stor9[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor9[address(msg.sender)] += arg1
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
                if usersSaleInfo[address(msg.sender)].field_0:
                    if usersSaleInfo[address(msg.sender)].field_256 > -1:
                        revert with 'NH{q', 17
                else:
                    usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    usersSaleInfo[address(msg.sender)].field_256 = 0
                if stor9[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor9[address(msg.sender)] += arg1
                if tokenSold > -1:
                    revert with 'NH{q', 17
            else:
                if arg1 / tokenPrice and t * s > -1 / arg1 / tokenPrice:
                    revert with 'NH{q', 17
                if not arg1 / tokenPrice:
                    revert with 'NH{q', 18
                if arg1 / tokenPrice * t * s / arg1 / tokenPrice != t * s:
                    revert with 'NH{q', 1
                if usersSaleInfo[address(msg.sender)].field_0:
                    if usersSaleInfo[address(msg.sender)].field_256 > (-1 * arg1 / tokenPrice * t * s) - 1:
                        revert with 'NH{q', 17
                    usersSaleInfo[address(msg.sender)].field_256 += arg1 / tokenPrice * t * s
                else:
                    usersSaleInfo[address(msg.sender)].field_0 = msg.sender
                    usersSaleInfo[address(msg.sender)].field_256 = arg1 / tokenPrice * t * s
                if stor9[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                stor9[address(msg.sender)] += arg1
                if tokenSold > (-1 * arg1 / tokenPrice * t * s) - 1:
                    revert with 'NH{q', 17
                tokenSold += arg1 / tokenPrice * t * s
    if totalMIMAmount > -arg1 - 1:
        revert with 'NH{q', 17
    totalMIMAmount += arg1
    emit Presale(arg1);
}



}
