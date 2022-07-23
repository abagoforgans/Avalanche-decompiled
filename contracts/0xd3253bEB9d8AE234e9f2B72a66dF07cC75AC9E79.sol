contract main {




// =====================  Runtime code  =====================


const name = 'Meat', 0

const decimals = 18

const symbol = 'MEAT', 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address dexRouterAddress;
address liquidityPairAddress;
uint8 isTradingEnabled; offset 160
uint128 stor106; offset 160
address sub_0e010c9eAddress;
uint256 buyTax;
uint256 sellTax;
mapping of uint8 stor109;
mapping of uint8 stor110;
address sub_463276b8Address;

function isTradingEnabled() {
    return bool(isTradingEnabled)
}

function dexRouter() {
    return dexRouterAddress
}

function sub_0e010c9e(?) {
    return sub_0e010c9eAddress
}

function totalSupply() {
    return totalSupply
}

function sub_463276b8(?) {
    return sub_463276b8Address
}

function buyTax() {
    return buyTax
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function liquidityPair() {
    return liquidityPairAddress
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor110[arg1])
}

function sellTax() {
    return sellTax
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor109[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_138dce27(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_463276b8Address = address(arg1)
}

function sub_272177bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0e010c9eAddress = address(arg1)
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if isTradingEnabled:
        revert with 0, 'Trading already enabled'
    Mask(96, 0, stor106.field_160) = 1
}

function setBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor109[address(arg1)] = uint8(arg2)
}

function setWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor110[address(arg1)] = uint8(arg2)
}

function setBuyTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0, 'Tax cant be higher than 25'
    buyTax = arg1
}

function setSellTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 25:
        revert with 0, 'Tax cant be higher than 25'
    sellTax = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    Mask(96, 0, stor106.field_160) = 0
    buyTax = 99
    sellTax = 99
    sub_0e010c9eAddress = arg3
    dexRouterAddress = arg1
    require ext_code.size(dexRouterAddress)
    staticcall dexRouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    liquidityPairAddress = ext_call.return_data[12 len 20]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg4 - 1:
        revert with 'NH{q', 17
    totalSupply += arg4
    if balanceOf[address(msg.sender)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, 0, msg.sender);
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, 'Sender is zero address'
    if not arg1:
        revert with 0, 'Recipient is zero address'
    if stor109[address(msg.sender)]:
        revert with 0, 'Address blacklisted'
    if stor109[address(arg1)]:
        revert with 0, 'Address blacklisted'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Not enough tokens'
    if stor110[address(msg.sender)]:
        if arg2 and 0 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 < 0:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        if balanceOf[address(stor106.field_0)] > -1:
            revert with 'NH{q', 17
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor110[address(arg1)]:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 < 0:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            if balanceOf[address(stor106.field_0)] > -1:
                revert with 'NH{q', 17
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg1 == liquidityPairAddress:
                if arg2 and sellTax > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 < arg2 * sellTax / 100:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 + (arg2 * sellTax / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellTax / 100)
                if balanceOf[address(stor106.field_0)] > -(arg2 * sellTax / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(stor106.field_0)] += arg2 * sellTax / 100
                emit Transfer((arg2 - (arg2 * sellTax / 100)), msg.sender, arg1);
            else:
                if stor110[address(arg1)]:
                    if arg2 and 0 > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    if balanceOf[address(stor106.field_0)] > -1:
                        revert with 'NH{q', 17
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if liquidityPairAddress != msg.sender:
                        if arg2 and 0 > -1 / arg2:
                            revert with 'NH{q', 17
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        if balanceOf[address(stor106.field_0)] > -1:
                            revert with 'NH{q', 17
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and buyTax > -1 / arg2:
                            revert with 'NH{q', 17
                        if arg2 < arg2 * buyTax / 100:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * buyTax / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyTax / 100)
                        if balanceOf[address(stor106.field_0)] > -(arg2 * buyTax / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(stor106.field_0)] += arg2 * buyTax / 100
                        emit Transfer((arg2 - (arg2 * buyTax / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0, 'Sender is zero address'
    if not arg2:
        revert with 0, 'Recipient is zero address'
    if stor109[address(arg1)]:
        revert with 0, 'Address blacklisted'
    if stor109[address(arg2)]:
        revert with 0, 'Address blacklisted'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Not enough tokens'
    if stor110[address(arg1)]:
        if arg3 and 0 > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 < 0:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        if balanceOf[address(stor106.field_0)] > -1:
            revert with 'NH{q', 17
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor110[address(arg2)]:
            if arg3 and 0 > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 < 0:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            if balanceOf[address(stor106.field_0)] > -1:
                revert with 'NH{q', 17
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg2 == liquidityPairAddress:
                if arg3 and sellTax > -1 / arg3:
                    revert with 'NH{q', 17
                if arg3 < arg3 * sellTax / 100:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 + (arg3 * sellTax / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellTax / 100)
                if balanceOf[address(stor106.field_0)] > -(arg3 * sellTax / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(stor106.field_0)] += arg3 * sellTax / 100
                emit Transfer((arg3 - (arg3 * sellTax / 100)), arg1, arg2);
            else:
                if stor110[address(arg2)]:
                    if arg3 and 0 > -1 / arg3:
                        revert with 'NH{q', 17
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    if balanceOf[address(stor106.field_0)] > -1:
                        revert with 'NH{q', 17
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg1 != liquidityPairAddress:
                        if arg3 and 0 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        if balanceOf[address(stor106.field_0)] > -1:
                            revert with 'NH{q', 17
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and buyTax > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * buyTax / 100:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * buyTax / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyTax / 100)
                        if balanceOf[address(stor106.field_0)] > -(arg3 * buyTax / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(stor106.field_0)] += arg3 * buyTax / 100
                        emit Transfer((arg3 - (arg3 * buyTax / 100)), arg1, arg2);
    return 1
}



}
