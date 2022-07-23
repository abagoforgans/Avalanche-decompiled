contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const name = 'Tsunami Liquidity Token', 0

const decimals = 18

const symbol = '', 0

const bnbBalance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
mapping of uint8 stor104;
address tokenAddress;
uint256 totalTxs;
uint256 stor107;
uint256 stor108;
uint256 providers;
mapping of uint8 stor110;
mapping of uint256 txs;
uint8 isPaused;

function totalSupply() {
    return totalSupply
}

function txs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return txs[address(arg1)]
}

function totalTxs() {
    return totalTxs
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor104[arg1])
}

function tokenAddress() {
    return tokenAddress
}

function isPaused() {
    return bool(isPaused)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function providers() {
    return providers
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPaused = 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPaused = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function tokenBalance() {
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0, '4'
    if not msg.sender:
        revert with 0, '5'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addAddressToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor104[address(arg1)]:
        return 0
    stor104[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor104[address(arg1)]:
        return 0
    stor104[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not arg1:
        revert with 0, '4'
    if not msg.sender:
        revert with 0, '5'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 1
    if not arg1:
        revert with 0, '4'
    if not msg.sender:
        revert with 0, '5'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0, 'to address will not be 0'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 1
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 1
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    isPaused = 1
    tokenAddress = arg1
    stor107 = block.timestamp
    stor108 = 60
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        revert with 0, 'to address will not be 0'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 1
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 1
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit 0xfeddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 1
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not msg.sender:
        revert with 0, '4'
    if not arg1:
        revert with 0, '5'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function addAddressesToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        if stor104[mem[(32 * idx) + 140 len 20]]:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        stor104[address(mem[(32 * idx) + 128])] = 1
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[ceil32(32 * arg1.length) + 97]);
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        if not stor104[mem[(32 * idx) + 140 len 20]]:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        stor104[address(mem[(32 * idx) + 128])] = 0
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[ceil32(32 * arg1.length) + 97]);
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function getBnbToLiquidityInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'bnb_sold > 0,,,,,3'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not -arg1:
        if not eth.balance(this.address):
            revert with 0, 18
        if 0 / eth.balance(this.address) > -2:
            revert with 0, 17
        if (0 / eth.balance(this.address)) + 1 < 0 / eth.balance(this.address):
            revert with 0, 1
    else:
        if arg1 and ext_call.return_data[0] > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
            revert with 0, 1
        if not eth.balance(this.address):
            revert with 0, 18
        if arg1 * ext_call.return_data[0] / eth.balance(this.address) > -2:
            revert with 0, 17
        if (arg1 * ext_call.return_data[0] / eth.balance(this.address)) + 1 < arg1 * ext_call.return_data[0] / eth.balance(this.address):
            revert with 0, 1
    if not -arg1:
        if not eth.balance(this.address):
            revert with 0, 18
        return (0 / eth.balance(this.address))
    if arg1 and totalSupply > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * totalSupply / arg1 != totalSupply:
        revert with 0, 1
    if not eth.balance(this.address):
        revert with 0, 18
    return (arg1 * totalSupply / eth.balance(this.address))
}

function getLiquidityToReserveInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        revert with 0, 'total_liquidity > 0,,,,1'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not -arg1:
        if not totalSupply:
            revert with 0, 18
        if not -arg1:
            if not totalSupply:
                revert with 0, 18
            return 0 / totalSupply, 0 / totalSupply
        if arg1 and ext_call.return_data[0] > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
            revert with 0, 1
        if not totalSupply:
            revert with 0, 18
        return 0 / totalSupply, arg1 * ext_call.return_data[0] / totalSupply
    if arg1 and eth.balance(this.address) > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * eth.balance(this.address) / arg1 != eth.balance(this.address):
        revert with 0, 1
    if not totalSupply:
        revert with 0, 18
    if not -arg1:
        if not totalSupply:
            revert with 0, 18
        return arg1 * eth.balance(this.address) / totalSupply, 0 / totalSupply
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
        revert with 0, 1
    if not totalSupply:
        revert with 0, 18
    return arg1 * eth.balance(this.address) / totalSupply, arg1 * ext_call.return_data[0] / totalSupply
}

function getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg2 <= 0:
        revert with 0, 'INVALID_VALUE'
    if arg3 <= 0:
        revert with 0, 'INVALID_VALUE'
    if not -arg1:
        if not -arg2:
            revert with 0, 18
        if arg2 and 1000 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 1000 * arg2 / arg2 != 1000:
            revert with 0, 1
        if 1000 * arg2 > -1:
            revert with 0, 17
        if 1000 * arg2 < 1000 * arg2:
            revert with 0, 1
        if not 1000 * arg2:
            revert with 0, 18
        return (0 / 1000 * arg2)
    if arg1 and 990 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if 990 * arg1 / arg1 != 990:
        revert with 0, 1
    if not -990 * arg1:
        if not -arg2:
            if 0 > !(990 * arg1):
                revert with 0, 17
            if 990 * arg1 < 0:
                revert with 0, 1
            if not 990 * arg1:
                revert with 0, 18
            return (0 / 990 * arg1)
        if arg2 and 1000 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 1000 * arg2 / arg2 != 1000:
            revert with 0, 1
        if 1000 * arg2 > !(990 * arg1):
            revert with 0, 17
        if (1000 * arg2) + (990 * arg1) < 1000 * arg2:
            revert with 0, 1
        if not (1000 * arg2) + (990 * arg1):
            revert with 0, 18
        return (0 / (1000 * arg2) + (990 * arg1))
    if 990 * arg1 and arg3 > -1 / 990 * arg1:
        revert with 0, 17
    if not 990 * arg1:
        revert with 0, 18
    if 990 * arg1 * arg3 / 990 * arg1 != arg3:
        revert with 0, 1
    if not -arg2:
        if 0 > !(990 * arg1):
            revert with 0, 17
        if 990 * arg1 < 0:
            revert with 0, 1
        if not 990 * arg1:
            revert with 0, 18
        return (990 * arg1 * arg3 / 990 * arg1)
    if arg2 and 1000 > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if 1000 * arg2 / arg2 != 1000:
        revert with 0, 1
    if 1000 * arg2 > !(990 * arg1):
        revert with 0, 17
    if (1000 * arg2) + (990 * arg1) < 1000 * arg2:
        revert with 0, 1
    if not (1000 * arg2) + (990 * arg1):
        revert with 0, 18
    return (990 * arg1 * arg3 / (1000 * arg2) + (990 * arg1))
}

function getOutputPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'input_reserve & output reserve must >0'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'input_reserve & output reserve must >0'
    if not -arg2:
        if arg1 > arg3:
            revert with 0, 1
        if arg3 < arg1:
            revert with 0, 17
        if not -arg3 + arg1:
            revert with 0, 18
        if arg3 - arg1 and 990 > -1 / arg3 - arg1:
            revert with 0, 17
        if not arg3 - arg1:
            revert with 0, 18
        if (990 * arg3) - (990 * arg1) / arg3 - arg1 != 990:
            revert with 0, 1
        if not (990 * arg3) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * arg3) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * arg3) - (990 * arg1)) + 1 < 0 / (990 * arg3) - (990 * arg1):
            revert with 0, 1
        return ((0 / (990 * arg3) - (990 * arg1)) + 1)
    if arg2 and arg1 > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * arg1 / arg2 != arg1:
        revert with 0, 1
    if not -1 * arg2 * arg1:
        if arg1 > arg3:
            revert with 0, 1
        if arg3 < arg1:
            revert with 0, 17
        if not -arg3 + arg1:
            revert with 0, 18
        if arg3 - arg1 and 990 > -1 / arg3 - arg1:
            revert with 0, 17
        if not arg3 - arg1:
            revert with 0, 18
        if (990 * arg3) - (990 * arg1) / arg3 - arg1 != 990:
            revert with 0, 1
        if not (990 * arg3) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * arg3) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * arg3) - (990 * arg1)) + 1 < 0 / (990 * arg3) - (990 * arg1):
            revert with 0, 1
        return ((0 / (990 * arg3) - (990 * arg1)) + 1)
    if arg2 * arg1 and 1000 > -1 / arg2 * arg1:
        revert with 0, 17
    if not arg2 * arg1:
        revert with 0, 18
    if 1000 * arg2 * arg1 / arg2 * arg1 != 1000:
        revert with 0, 1
    if arg1 > arg3:
        revert with 0, 1
    if arg3 < arg1:
        revert with 0, 17
    if not -arg3 + arg1:
        revert with 0, 18
    if arg3 - arg1 and 990 > -1 / arg3 - arg1:
        revert with 0, 17
    if not arg3 - arg1:
        revert with 0, 18
    if (990 * arg3) - (990 * arg1) / arg3 - arg1 != 990:
        revert with 0, 1
    if not (990 * arg3) - (990 * arg1):
        revert with 0, 18
    if 1000 * arg2 * arg1 / (990 * arg3) - (990 * arg1) > -2:
        revert with 0, 17
    if (1000 * arg2 * arg1 / (990 * arg3) - (990 * arg1)) + 1 < 1000 * arg2 * arg1 / (990 * arg3) - (990 * arg1):
        revert with 0, 1
    return ((1000 * arg2 * arg1 / (990 * arg3) - (990 * arg1)) + 1)
}

function getTokenToBnbInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'token sold < 0,,,,,2'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_VALUE'
    if eth.balance(this.address) <= 0:
        revert with 0, 'INVALID_VALUE'
    if not -arg1:
        if not -ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0, 1
        if 1000 * ext_call.return_data[0] > -1:
            revert with 0, 17
        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
            revert with 0, 1
        if not 1000 * ext_call.return_data[0]:
            revert with 0, 18
        return (0 / 1000 * ext_call.return_data[0])
    if arg1 and 990 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if 990 * arg1 / arg1 != 990:
        revert with 0, 1
    if not -990 * arg1:
        if not -ext_call.return_data[0]:
            if 0 > !(990 * arg1):
                revert with 0, 17
            if 990 * arg1 < 0:
                revert with 0, 1
            if not 990 * arg1:
                revert with 0, 18
            return (0 / 990 * arg1)
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0, 1
        if 1000 * ext_call.return_data[0] > !(990 * arg1):
            revert with 0, 17
        if (1000 * ext_call.return_data[0]) + (990 * arg1) < 1000 * ext_call.return_data[0]:
            revert with 0, 1
        if not (1000 * ext_call.return_data[0]) + (990 * arg1):
            revert with 0, 18
        return (0 / (1000 * ext_call.return_data[0]) + (990 * arg1))
    if 990 * arg1 and eth.balance(this.address) > -1 / 990 * arg1:
        revert with 0, 17
    if not 990 * arg1:
        revert with 0, 18
    if 990 * arg1 * eth.balance(this.address) / 990 * arg1 != eth.balance(this.address):
        revert with 0, 1
    if not -ext_call.return_data[0]:
        if 0 > !(990 * arg1):
            revert with 0, 17
        if 990 * arg1 < 0:
            revert with 0, 1
        if not 990 * arg1:
            revert with 0, 18
        return (990 * arg1 * eth.balance(this.address) / 990 * arg1)
    if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
        revert with 0, 1
    if 1000 * ext_call.return_data[0] > !(990 * arg1):
        revert with 0, 17
    if (1000 * ext_call.return_data[0]) + (990 * arg1) < 1000 * ext_call.return_data[0]:
        revert with 0, 1
    if not (1000 * ext_call.return_data[0]) + (990 * arg1):
        revert with 0, 18
    return (990 * arg1 * eth.balance(this.address) / (1000 * ext_call.return_data[0]) + (990 * arg1))
}

function getBnbToTokenInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'bnb_sold > 0,,,1'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0, 'INVALID_VALUE'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_VALUE'
    if not -arg1:
        if not -eth.balance(this.address):
            revert with 0, 18
        if eth.balance(this.address) and 1000 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if 1000 * eth.balance(this.address) / eth.balance(this.address) != 1000:
            revert with 0, 1
        if 1000 * eth.balance(this.address) > -1:
            revert with 0, 17
        if 1000 * eth.balance(this.address) < 1000 * eth.balance(this.address):
            revert with 0, 1
        if not 1000 * eth.balance(this.address):
            revert with 0, 18
        return (0 / 1000 * eth.balance(this.address))
    if arg1 and 990 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if 990 * arg1 / arg1 != 990:
        revert with 0, 1
    if not -990 * arg1:
        if not -eth.balance(this.address):
            if 0 > !(990 * arg1):
                revert with 0, 17
            if 990 * arg1 < 0:
                revert with 0, 1
            if not 990 * arg1:
                revert with 0, 18
            return (0 / 990 * arg1)
        if eth.balance(this.address) and 1000 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if 1000 * eth.balance(this.address) / eth.balance(this.address) != 1000:
            revert with 0, 1
        if 1000 * eth.balance(this.address) > !(990 * arg1):
            revert with 0, 17
        if (1000 * eth.balance(this.address)) + (990 * arg1) < 1000 * eth.balance(this.address):
            revert with 0, 1
        if not (1000 * eth.balance(this.address)) + (990 * arg1):
            revert with 0, 18
        return (0 / (1000 * eth.balance(this.address)) + (990 * arg1))
    if 990 * arg1 and ext_call.return_data[0] > -1 / 990 * arg1:
        revert with 0, 17
    if not 990 * arg1:
        revert with 0, 18
    if 990 * arg1 * ext_call.return_data[0] / 990 * arg1 != ext_call.return_data[0]:
        revert with 0, 1
    if not -eth.balance(this.address):
        if 0 > !(990 * arg1):
            revert with 0, 17
        if 990 * arg1 < 0:
            revert with 0, 1
        if not 990 * arg1:
            revert with 0, 18
        return (990 * arg1 * ext_call.return_data[0] / 990 * arg1)
    if eth.balance(this.address) and 1000 > -1 / eth.balance(this.address):
        revert with 0, 17
    if not eth.balance(this.address):
        revert with 0, 18
    if 1000 * eth.balance(this.address) / eth.balance(this.address) != 1000:
        revert with 0, 1
    if 1000 * eth.balance(this.address) > !(990 * arg1):
        revert with 0, 17
    if (1000 * eth.balance(this.address)) + (990 * arg1) < 1000 * eth.balance(this.address):
        revert with 0, 1
    if not (1000 * eth.balance(this.address)) + (990 * arg1):
        revert with 0, 18
    return (990 * arg1 * ext_call.return_data[0] / (1000 * eth.balance(this.address)) + (990 * arg1))
}

function getBnbToTokenOutputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'tokens_bought > 0,,,1'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if not -eth.balance(this.address):
        if arg1 > ext_call.return_data[0]:
            revert with 0, 1
        if ext_call.return_data[0] < arg1:
            revert with 0, 17
        if not -ext_call.return_data[0] + arg1:
            revert with 0, 18
        if ext_call.return_data[0] - arg1 and 990 > -1 / ext_call.return_data[0] - arg1:
            revert with 0, 17
        if not ext_call.return_data[0] - arg1:
            revert with 0, 18
        if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 != 990:
            revert with 0, 1
        if not (990 * ext_call.return_data[0]) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * ext_call.return_data[0]) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 < 0 / (990 * ext_call.return_data[0]) - (990 * arg1):
            revert with 0, 1
        return ((0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    if not eth.balance(this.address):
        revert with 0, 18
    if eth.balance(this.address) * arg1 / eth.balance(this.address) != arg1:
        revert with 0, 1
    if not -1 * eth.balance(this.address) * arg1:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 1
        if ext_call.return_data[0] < arg1:
            revert with 0, 17
        if not -ext_call.return_data[0] + arg1:
            revert with 0, 18
        if ext_call.return_data[0] - arg1 and 990 > -1 / ext_call.return_data[0] - arg1:
            revert with 0, 17
        if not ext_call.return_data[0] - arg1:
            revert with 0, 18
        if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 != 990:
            revert with 0, 1
        if not (990 * ext_call.return_data[0]) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * ext_call.return_data[0]) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 < 0 / (990 * ext_call.return_data[0]) - (990 * arg1):
            revert with 0, 1
        return ((0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
    if eth.balance(this.address) * arg1 and 1000 > -1 / eth.balance(this.address) * arg1:
        revert with 0, 17
    if not eth.balance(this.address) * arg1:
        revert with 0, 18
    if 1000 * eth.balance(this.address) * arg1 / eth.balance(this.address) * arg1 != 1000:
        revert with 0, 1
    if arg1 > ext_call.return_data[0]:
        revert with 0, 1
    if ext_call.return_data[0] < arg1:
        revert with 0, 17
    if not -ext_call.return_data[0] + arg1:
        revert with 0, 18
    if ext_call.return_data[0] - arg1 and 990 > -1 / ext_call.return_data[0] - arg1:
        revert with 0, 17
    if not ext_call.return_data[0] - arg1:
        revert with 0, 18
    if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 != 990:
        revert with 0, 1
    if not (990 * ext_call.return_data[0]) - (990 * arg1):
        revert with 0, 18
    if 1000 * eth.balance(this.address) * arg1 / (990 * ext_call.return_data[0]) - (990 * arg1) > -2:
        revert with 0, 17
    if (1000 * eth.balance(this.address) * arg1 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 < 1000 * eth.balance(this.address) * arg1 / (990 * ext_call.return_data[0]) - (990 * arg1):
        revert with 0, 1
    return ((1000 * eth.balance(this.address) * arg1 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
}

function getTokenToBnbOutputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'bnb_bought > 0,,,,2'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if eth.balance(this.address) <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if not -ext_call.return_data[0]:
        if arg1 > eth.balance(this.address):
            revert with 0, 1
        if eth.balance(this.address) < arg1:
            revert with 0, 17
        if not -eth.balance(this.address) + arg1:
            revert with 0, 18
        if eth.balance(this.address) - arg1 and 990 > -1 / eth.balance(this.address) - arg1:
            revert with 0, 17
        if not eth.balance(this.address) - arg1:
            revert with 0, 18
        if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 != 990:
            revert with 0, 1
        if not (990 * eth.balance(this.address)) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * eth.balance(this.address)) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 < 0 / (990 * eth.balance(this.address)) - (990 * arg1):
            revert with 0, 1
        return ((0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
    if ext_call.return_data[0] and arg1 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
        revert with 0, 1
    if not -1 * ext_call.return_data[0] * arg1:
        if arg1 > eth.balance(this.address):
            revert with 0, 1
        if eth.balance(this.address) < arg1:
            revert with 0, 17
        if not -eth.balance(this.address) + arg1:
            revert with 0, 18
        if eth.balance(this.address) - arg1 and 990 > -1 / eth.balance(this.address) - arg1:
            revert with 0, 17
        if not eth.balance(this.address) - arg1:
            revert with 0, 18
        if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 != 990:
            revert with 0, 1
        if not (990 * eth.balance(this.address)) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * eth.balance(this.address)) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 < 0 / (990 * eth.balance(this.address)) - (990 * arg1):
            revert with 0, 1
        return ((0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
    if ext_call.return_data[0] * arg1 and 1000 > -1 / ext_call.return_data[0] * arg1:
        revert with 0, 17
    if not ext_call.return_data[0] * arg1:
        revert with 0, 18
    if 1000 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != 1000:
        revert with 0, 1
    if arg1 > eth.balance(this.address):
        revert with 0, 1
    if eth.balance(this.address) < arg1:
        revert with 0, 17
    if not -eth.balance(this.address) + arg1:
        revert with 0, 18
    if eth.balance(this.address) - arg1 and 990 > -1 / eth.balance(this.address) - arg1:
        revert with 0, 17
    if not eth.balance(this.address) - arg1:
        revert with 0, 18
    if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 != 990:
        revert with 0, 1
    if not (990 * eth.balance(this.address)) - (990 * arg1):
        revert with 0, 18
    if 1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1) > -2:
        revert with 0, 17
    if (1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 < 1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1):
        revert with 0, 1
    return ((1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
}

function removeLiquidity(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor104[msg.sender]:
        revert with 0, 'not whitelisted!'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amount > 0 && min_bnb > 0 && min_tokens > 0,333'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amount > 0 && min_bnb > 0 && min_tokens > 0,333'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amount > 0 && min_bnb > 0 && min_tokens > 0,333'
    require totalSupply
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not -arg1:
        if not totalSupply:
            revert with 0, 18
        if not -arg1:
            if not totalSupply:
                revert with 0, 18
            if 0 / totalSupply < arg2:
                revert with 0, '(bnb_amount >= min_bnb && token_amount >= min_tokens,33'
            if 0 / totalSupply < arg3:
                revert with 0, '(bnb_amount >= min_bnb && token_amount >= min_tokens,33'
            if arg1 > balanceOf[msg.sender]:
                revert with 0, 1
            if balanceOf[msg.sender] < arg1:
                revert with 0, 17
            balanceOf[msg.sender] -= arg1
            if arg1 > totalSupply:
                revert with 0, 1
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            call msg.sender with:
               value 0 / totalSupply wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / totalSupply
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'transfer error'
            emit onRemoveLiquidity(msg.sender, 0 / totalSupply, 0 / totalSupply);
            emit onLiquidity(msg.sender, balanceOf[msg.sender]);
            emit 0xfeddf252: arg1, msg.sender, 0
            return 0 / totalSupply, 0 / totalSupply
        if arg1 and ext_call.return_data[0] > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
            revert with 0, 1
        if not totalSupply:
            revert with 0, 18
        if 0 / totalSupply < arg2:
            revert with 0, '(bnb_amount >= min_bnb && token_amount >= min_tokens,33'
        if arg1 * ext_call.return_data[0] / totalSupply < arg3:
            revert with 0, '(bnb_amount >= min_bnb && token_amount >= min_tokens,33'
        if arg1 > balanceOf[msg.sender]:
            revert with 0, 1
        if balanceOf[msg.sender] < arg1:
            revert with 0, 17
        balanceOf[msg.sender] -= arg1
        if arg1 > totalSupply:
            revert with 0, 1
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        call msg.sender with:
           value 0 / totalSupply wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 * ext_call.return_data[0] / totalSupply
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer error'
        emit onRemoveLiquidity(msg.sender, 0 / totalSupply, arg1 * ext_call.return_data[0] / totalSupply);
        emit onLiquidity(msg.sender, balanceOf[msg.sender]);
        emit 0xfeddf252: arg1, msg.sender, 0
        return 0 / totalSupply, arg1 * ext_call.return_data[0] / totalSupply
    if arg1 and eth.balance(this.address) > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * eth.balance(this.address) / arg1 != eth.balance(this.address):
        revert with 0, 1
    if not totalSupply:
        revert with 0, 18
    if not -arg1:
        if not totalSupply:
            revert with 0, 18
        if arg1 * eth.balance(this.address) / totalSupply < arg2:
            revert with 0, '(bnb_amount >= min_bnb && token_amount >= min_tokens,33'
        if 0 / totalSupply < arg3:
            revert with 0, '(bnb_amount >= min_bnb && token_amount >= min_tokens,33'
        if arg1 > balanceOf[msg.sender]:
            revert with 0, 1
        if balanceOf[msg.sender] < arg1:
            revert with 0, 17
        balanceOf[msg.sender] -= arg1
        if arg1 > totalSupply:
            revert with 0, 1
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        call msg.sender with:
           value arg1 * eth.balance(this.address) / totalSupply wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer error'
        emit onRemoveLiquidity(msg.sender, arg1 * eth.balance(this.address) / totalSupply, 0 / totalSupply);
        emit onLiquidity(msg.sender, balanceOf[msg.sender]);
        emit 0xfeddf252: arg1, msg.sender, 0
        return arg1 * eth.balance(this.address) / totalSupply, 0 / totalSupply
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
        revert with 0, 1
    if not totalSupply:
        revert with 0, 18
    if arg1 * eth.balance(this.address) / totalSupply < arg2:
        revert with 0, '(bnb_amount >= min_bnb && token_amount >= min_tokens,33'
    if arg1 * ext_call.return_data[0] / totalSupply < arg3:
        revert with 0, '(bnb_amount >= min_bnb && token_amount >= min_tokens,33'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 1
    if balanceOf[msg.sender] < arg1:
        revert with 0, 17
    balanceOf[msg.sender] -= arg1
    if arg1 > totalSupply:
        revert with 0, 1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    call msg.sender with:
       value arg1 * eth.balance(this.address) / totalSupply wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 * ext_call.return_data[0] / totalSupply
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer error'
    emit onRemoveLiquidity(msg.sender, arg1 * eth.balance(this.address) / totalSupply, arg1 * ext_call.return_data[0] / totalSupply);
    emit onLiquidity(msg.sender, balanceOf[msg.sender]);
    emit 0xfeddf252: arg1, msg.sender, 0
    return arg1 * eth.balance(this.address) / totalSupply, arg1 * ext_call.return_data[0] / totalSupply
}

function addLiquidity(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap#addLiquidity: INVALID_ARGUMENT'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap#addLiquidity: INVALID_ARGUMENT'
    if not -bool(stor110[msg.sender]):
        stor110[msg.sender] = 1
        if providers > -2:
            revert with 0, 17
        providers++
    if not totalSupply:
        if msg.value < 10^18:
            revert with 0, 'INVALID_VALUE'
        totalSupply = eth.balance(this.address)
        balanceOf[msg.sender] = eth.balance(this.address)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transforfrom 5 error'
        emit onAddLiquidity(msg.sender, msg.value, arg2);
        emit onLiquidity(msg.sender, balanceOf[msg.sender]);
        emit 0xfeddf252: eth.balance(this.address), 0, msg.sender
        return eth.balance(this.address)
    if arg1 <= 0:
        revert with 0, 'min_liquidity > 0,,,,4'
    if msg.value > eth.balance(this.address):
        revert with 0, 1
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not -msg.value:
        if not eth.balance(this.address) - msg.value:
            revert with 0, 18
        if 0 / eth.balance(this.address) - msg.value > -2:
            revert with 0, 17
        if (0 / eth.balance(this.address) - msg.value) + 1 < 0 / eth.balance(this.address) - msg.value:
            revert with 0, 1
        if not -msg.value:
            if not eth.balance(this.address) - msg.value:
                revert with 0, 18
            if arg2 < (0 / eth.balance(this.address) - msg.value) + 1:
                revert with 0, 'max_tokens >= token_amount && liquidity_minted >= min_liquidity,,,,1'
            if 0 / eth.balance(this.address) - msg.value < arg1:
                revert with 0, 'max_tokens >= token_amount && liquidity_minted >= min_liquidity,,,,1'
            if balanceOf[msg.sender] > !(0 / eth.balance(this.address) - msg.value):
                revert with 0, 17
            if balanceOf[msg.sender] + (0 / eth.balance(this.address) - msg.value) < balanceOf[msg.sender]:
                revert with 0, 1
            balanceOf[msg.sender] += 0 / eth.balance(this.address) - msg.value
            if totalSupply > !(0 / eth.balance(this.address) - msg.value):
                revert with 0, 17
            if totalSupply + (0 / eth.balance(this.address) - msg.value) < totalSupply:
                revert with 0, 1
            totalSupply += 0 / eth.balance(this.address) - msg.value
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (0 / eth.balance(this.address) - msg.value) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'transfrom4 error'
            emit onAddLiquidity(msg.sender, msg.value, (0 / eth.balance(this.address) - msg.value) + 1);
            emit onLiquidity(msg.sender, balanceOf[msg.sender]);
            emit 0xfeddf252: (0 / eth.balance(this.address) - msg.value), 0, msg.sender
            return (0 / eth.balance(this.address) - msg.value)
        if msg.value and totalSupply > -1 / msg.value:
            revert with 0, 17
        if not msg.value:
            revert with 0, 18
        if msg.value * totalSupply / msg.value != totalSupply:
            revert with 0, 1
        if not eth.balance(this.address) - msg.value:
            revert with 0, 18
        if arg2 < (0 / eth.balance(this.address) - msg.value) + 1:
            revert with 0, 'max_tokens >= token_amount && liquidity_minted >= min_liquidity,,,,1'
        if msg.value * totalSupply / eth.balance(this.address) - msg.value < arg1:
            revert with 0, 'max_tokens >= token_amount && liquidity_minted >= min_liquidity,,,,1'
        if balanceOf[msg.sender] > !(msg.value * totalSupply / eth.balance(this.address) - msg.value):
            revert with 0, 17
        if balanceOf[msg.sender] + (msg.value * totalSupply / eth.balance(this.address) - msg.value) < balanceOf[msg.sender]:
            revert with 0, 1
        balanceOf[msg.sender] += msg.value * totalSupply / eth.balance(this.address) - msg.value
        if totalSupply > !(msg.value * totalSupply / eth.balance(this.address) - msg.value):
            revert with 0, 17
        if totalSupply + (msg.value * totalSupply / eth.balance(this.address) - msg.value) < totalSupply:
            revert with 0, 1
        totalSupply += msg.value * totalSupply / eth.balance(this.address) - msg.value
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (0 / eth.balance(this.address) - msg.value) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfrom4 error'
        emit onAddLiquidity(msg.sender, msg.value, (0 / eth.balance(this.address) - msg.value) + 1);
    else:
        if msg.value and ext_call.return_data[0] > -1 / msg.value:
            revert with 0, 17
        if not msg.value:
            revert with 0, 18
        if msg.value * ext_call.return_data[0] / msg.value != ext_call.return_data[0]:
            revert with 0, 1
        if not eth.balance(this.address) - msg.value:
            revert with 0, 18
        if msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value > -2:
            revert with 0, 17
        if (msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value) + 1 < msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value:
            revert with 0, 1
        if not -msg.value:
            if not eth.balance(this.address) - msg.value:
                revert with 0, 18
            if arg2 < (msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value) + 1:
                revert with 0, 'max_tokens >= token_amount && liquidity_minted >= min_liquidity,,,,1'
            if 0 / eth.balance(this.address) - msg.value < arg1:
                revert with 0, 'max_tokens >= token_amount && liquidity_minted >= min_liquidity,,,,1'
            if balanceOf[msg.sender] > !(0 / eth.balance(this.address) - msg.value):
                revert with 0, 17
            if balanceOf[msg.sender] + (0 / eth.balance(this.address) - msg.value) < balanceOf[msg.sender]:
                revert with 0, 1
            balanceOf[msg.sender] += 0 / eth.balance(this.address) - msg.value
            if totalSupply > !(0 / eth.balance(this.address) - msg.value):
                revert with 0, 17
            if totalSupply + (0 / eth.balance(this.address) - msg.value) < totalSupply:
                revert with 0, 1
            totalSupply += 0 / eth.balance(this.address) - msg.value
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'transfrom4 error'
            emit onAddLiquidity(msg.sender, msg.value, (msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value) + 1);
            emit onLiquidity(msg.sender, balanceOf[msg.sender]);
            emit 0xfeddf252: (0 / eth.balance(this.address) - msg.value), 0, msg.sender
            return (0 / eth.balance(this.address) - msg.value)
        if msg.value and totalSupply > -1 / msg.value:
            revert with 0, 17
        if not msg.value:
            revert with 0, 18
        if msg.value * totalSupply / msg.value != totalSupply:
            revert with 0, 1
        if not eth.balance(this.address) - msg.value:
            revert with 0, 18
        if arg2 < (msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value) + 1:
            revert with 0, 'max_tokens >= token_amount && liquidity_minted >= min_liquidity,,,,1'
        if msg.value * totalSupply / eth.balance(this.address) - msg.value < arg1:
            revert with 0, 'max_tokens >= token_amount && liquidity_minted >= min_liquidity,,,,1'
        if balanceOf[msg.sender] > !(msg.value * totalSupply / eth.balance(this.address) - msg.value):
            revert with 0, 17
        if balanceOf[msg.sender] + (msg.value * totalSupply / eth.balance(this.address) - msg.value) < balanceOf[msg.sender]:
            revert with 0, 1
        balanceOf[msg.sender] += msg.value * totalSupply / eth.balance(this.address) - msg.value
        if totalSupply > !(msg.value * totalSupply / eth.balance(this.address) - msg.value):
            revert with 0, 17
        if totalSupply + (msg.value * totalSupply / eth.balance(this.address) - msg.value) < totalSupply:
            revert with 0, 1
        totalSupply += msg.value * totalSupply / eth.balance(this.address) - msg.value
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfrom4 error'
        emit onAddLiquidity(msg.sender, msg.value, (msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value) + 1);
    emit onLiquidity(msg.sender, balanceOf[msg.sender]);
    emit 0xfeddf252: (msg.value * totalSupply / eth.balance(this.address) - msg.value), 0, msg.sender
    return (msg.value * totalSupply / eth.balance(this.address) - msg.value)
}

function tokenToBnbSwapOutput(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if arg1 <= 0:
        revert with 0, 'bnb_bought > 0'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if eth.balance(this.address) <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if not -ext_call.return_data[0]:
        if arg1 > eth.balance(this.address):
            revert with 0, 1
        if eth.balance(this.address) < arg1:
            revert with 0, 17
        if not -eth.balance(this.address) + arg1:
            revert with 0, 18
        if eth.balance(this.address) - arg1 and 990 > -1 / eth.balance(this.address) - arg1:
            revert with 0, 17
        if not eth.balance(this.address) - arg1:
            revert with 0, 18
        if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 != 990:
            revert with 0, 1
        if not (990 * eth.balance(this.address)) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * eth.balance(this.address)) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 < 0 / (990 * eth.balance(this.address)) - (990 * arg1):
            revert with 0, 1
        staticcall tokenAddress.0x79a5b227 with:
                gas gas_remaining wei
               args msg.sender, (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 > !ext_call.return_data[32]:
            revert with 0, 17
        if arg2 < (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1:
            revert with 0, 'max tokens exceeded'
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transorfroom error'
        emit onBnbPurchase(msg.sender, (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1, arg1);
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return ((0 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1)
    if ext_call.return_data[0] and arg1 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
        revert with 0, 1
    if not -1 * ext_call.return_data[0] * arg1:
        if arg1 > eth.balance(this.address):
            revert with 0, 1
        if eth.balance(this.address) < arg1:
            revert with 0, 17
        if not -eth.balance(this.address) + arg1:
            revert with 0, 18
        if eth.balance(this.address) - arg1 and 990 > -1 / eth.balance(this.address) - arg1:
            revert with 0, 17
        if not eth.balance(this.address) - arg1:
            revert with 0, 18
        if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 != 990:
            revert with 0, 1
        if not (990 * eth.balance(this.address)) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * eth.balance(this.address)) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 < 0 / (990 * eth.balance(this.address)) - (990 * arg1):
            revert with 0, 1
        staticcall tokenAddress.0x79a5b227 with:
                gas gas_remaining wei
               args msg.sender, (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 > !ext_call.return_data[32]:
            revert with 0, 17
        if arg2 < (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1:
            revert with 0, 'max tokens exceeded'
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transorfroom error'
        emit onBnbPurchase(msg.sender, (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1, arg1);
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return ((0 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1)
    if ext_call.return_data[0] * arg1 and 1000 > -1 / ext_call.return_data[0] * arg1:
        revert with 0, 17
    if not ext_call.return_data[0] * arg1:
        revert with 0, 18
    if 1000 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != 1000:
        revert with 0, 1
    if arg1 > eth.balance(this.address):
        revert with 0, 1
    if eth.balance(this.address) < arg1:
        revert with 0, 17
    if not -eth.balance(this.address) + arg1:
        revert with 0, 18
    if eth.balance(this.address) - arg1 and 990 > -1 / eth.balance(this.address) - arg1:
        revert with 0, 17
    if not eth.balance(this.address) - arg1:
        revert with 0, 18
    if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 != 990:
        revert with 0, 1
    if not (990 * eth.balance(this.address)) - (990 * arg1):
        revert with 0, 18
    if 1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1) > -2:
        revert with 0, 17
    if (1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 < 1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1):
        revert with 0, 1
    staticcall tokenAddress.0x79a5b227 with:
            gas gas_remaining wei
           args msg.sender, (1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if (1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 > !ext_call.return_data[32]:
        revert with 0, 17
    if arg2 < (1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1:
        revert with 0, 'max tokens exceeded'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), (1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transorfroom error'
    emit onBnbPurchase(msg.sender, (1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1, arg1);
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if not -eth.balance(this.address):
        if 10^18 > ext_call.return_data[0]:
            revert with 0, 1
        if ext_call.return_data[0] < 10^18:
            revert with 0, 17
        if not -ext_call.return_data[0] + 10^18:
            revert with 0, 18
        if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
            revert with 0, 17
        if not ext_call.return_data[0] - 10^18:
            revert with 0, 18
        if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
            revert with 0, 1
        if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
            revert with 0, 18
        if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
            revert with 0, 17
        if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
            revert with 0, 1
        if stor107 > block.timestamp:
            revert with 0, 1
        if block.timestamp < stor107:
            revert with 0, 17
        if block.timestamp - stor107 > stor108:
            if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
            stor107 = block.timestamp
        emit onContractBalance(eth.balance(this.address));
        emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    else:
        if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
            revert with 0, 1
        if not -1 * 10^18 * eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                revert with 0, 17
            if not 10^18 * eth.balance(this.address):
                revert with 0, 18
            if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                revert with 0, 1
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    if totalTxs > -2:
        revert with 0, 17
    totalTxs++
    if txs[msg.sender] > -2:
        revert with 0, 17
    txs[msg.sender]++
    return ((1000 * ext_call.return_data[0] * arg1 / (990 * eth.balance(this.address)) - (990 * arg1)) + ext_call.return_data[32] + 1)
}

function bnbToTokenSwapOutput(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if arg1 <= 0:
        revert with 0, 'tokens_bought > 0 && max_bnb >'
    if msg.value <= 0:
        revert with 0, 'tokens_bought > 0 && max_bnb >'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value > eth.balance(this.address):
        revert with 0, 1
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if eth.balance(this.address) - msg.value <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if not -eth.balance(this.address) + msg.value:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 1
        if ext_call.return_data[0] < arg1:
            revert with 0, 17
        if not -ext_call.return_data[0] + arg1:
            revert with 0, 18
        if ext_call.return_data[0] - arg1 and 990 > -1 / ext_call.return_data[0] - arg1:
            revert with 0, 17
        if not ext_call.return_data[0] - arg1:
            revert with 0, 18
        if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 != 990:
            revert with 0, 1
        if not (990 * ext_call.return_data[0]) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * ext_call.return_data[0]) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 < 0 / (990 * ext_call.return_data[0]) - (990 * arg1):
            revert with 0, 1
        if (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 > msg.value:
            revert with 0, 1
        if msg.value < (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1:
            revert with 0, 17
        if not msg.value + -(0 / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value msg.value + -(0 / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'error'
        emit onTokenPurchase(msg.sender, (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1, arg1);
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return ((0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
    if eth.balance(this.address) - msg.value and arg1 > -1 / eth.balance(this.address) - msg.value:
        revert with 0, 17
    if not eth.balance(this.address) - msg.value:
        revert with 0, 18
    if (eth.balance(this.address) * arg1) - (msg.value * arg1) / eth.balance(this.address) - msg.value != arg1:
        revert with 0, 1
    if not (-1 * eth.balance(this.address) * arg1) + (msg.value * arg1):
        if arg1 > ext_call.return_data[0]:
            revert with 0, 1
        if ext_call.return_data[0] < arg1:
            revert with 0, 17
        if not -ext_call.return_data[0] + arg1:
            revert with 0, 18
        if ext_call.return_data[0] - arg1 and 990 > -1 / ext_call.return_data[0] - arg1:
            revert with 0, 17
        if not ext_call.return_data[0] - arg1:
            revert with 0, 18
        if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 != 990:
            revert with 0, 1
        if not (990 * ext_call.return_data[0]) - (990 * arg1):
            revert with 0, 18
        if 0 / (990 * ext_call.return_data[0]) - (990 * arg1) > -2:
            revert with 0, 17
        if (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 < 0 / (990 * ext_call.return_data[0]) - (990 * arg1):
            revert with 0, 1
        if (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 > msg.value:
            revert with 0, 1
        if msg.value < (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1:
            revert with 0, 17
        if not msg.value + -(0 / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value msg.value + -(0 / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'error'
        emit onTokenPurchase(msg.sender, (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1, arg1);
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return ((0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
    if (eth.balance(this.address) * arg1) - (msg.value * arg1) and 1000 > -1 / (eth.balance(this.address) * arg1) - (msg.value * arg1):
        revert with 0, 17
    if not (eth.balance(this.address) * arg1) - (msg.value * arg1):
        revert with 0, 18
    if (1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (eth.balance(this.address) * arg1) - (msg.value * arg1) != 1000:
        revert with 0, 1
    if arg1 > ext_call.return_data[0]:
        revert with 0, 1
    if ext_call.return_data[0] < arg1:
        revert with 0, 17
    if not -ext_call.return_data[0] + arg1:
        revert with 0, 18
    if ext_call.return_data[0] - arg1 and 990 > -1 / ext_call.return_data[0] - arg1:
        revert with 0, 17
    if not ext_call.return_data[0] - arg1:
        revert with 0, 18
    if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 != 990:
        revert with 0, 1
    if not (990 * ext_call.return_data[0]) - (990 * arg1):
        revert with 0, 18
    if (1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1) > -2:
        revert with 0, 17
    if ((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 < (1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1):
        revert with 0, 1
    if ((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 > msg.value:
        revert with 0, 1
    if msg.value < ((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1:
        revert with 0, 17
    if not msg.value + -((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call msg.sender with:
           value msg.value + -((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'error'
    emit onTokenPurchase(msg.sender, ((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1, arg1);
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if not -eth.balance(this.address):
        if 10^18 > ext_call.return_data[0]:
            revert with 0, 1
        if ext_call.return_data[0] < 10^18:
            revert with 0, 17
        if not -ext_call.return_data[0] + 10^18:
            revert with 0, 18
        if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
            revert with 0, 17
        if not ext_call.return_data[0] - 10^18:
            revert with 0, 18
        if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
            revert with 0, 1
        if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
            revert with 0, 18
        if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
            revert with 0, 17
        if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
            revert with 0, 1
        if stor107 > block.timestamp:
            revert with 0, 1
        if block.timestamp < stor107:
            revert with 0, 17
        if block.timestamp - stor107 > stor108:
            if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
            stor107 = block.timestamp
        emit onContractBalance(eth.balance(this.address));
        emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    else:
        if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
            revert with 0, 1
        if not -1 * 10^18 * eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                revert with 0, 17
            if not 10^18 * eth.balance(this.address):
                revert with 0, 18
            if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                revert with 0, 1
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    if totalTxs > -2:
        revert with 0, 17
    totalTxs++
    if txs[msg.sender] > -2:
        revert with 0, 17
    txs[msg.sender]++
    return (((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
}

function bnbToTokenSwapInput(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if msg.value <= 0:
        revert with 0, 'sold and min 0'
    if arg1 <= 0:
        revert with 0, 'sold and min 0'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value > eth.balance(this.address):
        revert with 0, 1
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if eth.balance(this.address) - msg.value <= 0:
        revert with 0, 'INVALID_VALUE'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_VALUE'
    if not -msg.value:
        if not -eth.balance(this.address) + msg.value:
            revert with 0, 18
        if eth.balance(this.address) - msg.value and 1000 > -1 / eth.balance(this.address) - msg.value:
            revert with 0, 17
        if not eth.balance(this.address) - msg.value:
            revert with 0, 18
        if (1000 * eth.balance(this.address)) - (1000 * msg.value) / eth.balance(this.address) - msg.value != 1000:
            revert with 0, 1
        if (1000 * eth.balance(this.address)) - (1000 * msg.value) > -1:
            revert with 0, 17
        if not (1000 * eth.balance(this.address)) - (1000 * msg.value):
            revert with 0, 18
        if 0 / (1000 * eth.balance(this.address)) - (1000 * msg.value) < arg1:
            revert with 0, 'tokens_bought >= min_tokens'
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / (1000 * eth.balance(this.address)) - (1000 * msg.value)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer err'
        emit onTokenPurchase(msg.sender, msg.value, 0 / (1000 * eth.balance(this.address)) - (1000 * msg.value));
        emit onContractBalance(eth.balance(this.address));
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return (0 / (1000 * eth.balance(this.address)) - (1000 * msg.value))
    if msg.value and 990 > -1 / msg.value:
        revert with 0, 17
    if not msg.value:
        revert with 0, 18
    if 990 * msg.value / msg.value != 990:
        revert with 0, 1
    if not -990 * msg.value:
        if not -eth.balance(this.address) + msg.value:
            if 0 > !(990 * msg.value):
                revert with 0, 17
            if 990 * msg.value < 0:
                revert with 0, 1
            if not 990 * msg.value:
                revert with 0, 18
            if 0 / 990 * msg.value < arg1:
                revert with 0, 'tokens_bought >= min_tokens'
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / 990 * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'transfer err'
            emit onTokenPurchase(msg.sender, msg.value, 0 / 990 * msg.value);
            emit onContractBalance(eth.balance(this.address));
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) <= 0:
                revert with 0, 'input_reserve & output reserve must >0'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'input_reserve & output reserve must >0'
            if not -eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                    revert with 0, 17
                if not eth.balance(this.address):
                    revert with 0, 18
                if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                    revert with 0, 1
                if not -1 * 10^18 * eth.balance(this.address):
                    if 10^18 > ext_call.return_data[0]:
                        revert with 0, 1
                    if ext_call.return_data[0] < 10^18:
                        revert with 0, 17
                    if not -ext_call.return_data[0] + 10^18:
                        revert with 0, 18
                    if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0] - 10^18:
                        revert with 0, 18
                    if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                        revert with 0, 1
                    if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                        revert with 0, 18
                    if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                        revert with 0, 17
                    if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                        revert with 0, 1
                    if stor107 > block.timestamp:
                        revert with 0, 1
                    if block.timestamp < stor107:
                        revert with 0, 17
                    if block.timestamp - stor107 > stor108:
                        if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor107 = block.timestamp
                    emit onContractBalance(eth.balance(this.address));
                    emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
                else:
                    if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                        revert with 0, 17
                    if not 10^18 * eth.balance(this.address):
                        revert with 0, 18
                    if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                        revert with 0, 1
                    if 10^18 > ext_call.return_data[0]:
                        revert with 0, 1
                    if ext_call.return_data[0] < 10^18:
                        revert with 0, 17
                    if not -ext_call.return_data[0] + 10^18:
                        revert with 0, 18
                    if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0] - 10^18:
                        revert with 0, 18
                    if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                        revert with 0, 1
                    if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                        revert with 0, 18
                    if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                        revert with 0, 17
                    if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                        revert with 0, 1
                    if stor107 > block.timestamp:
                        revert with 0, 1
                    if block.timestamp < stor107:
                        revert with 0, 17
                    if block.timestamp - stor107 > stor108:
                        if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor107 = block.timestamp
                    emit onContractBalance(eth.balance(this.address));
                    emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            if totalTxs > -2:
                revert with 0, 17
            totalTxs++
            if txs[msg.sender] > -2:
                revert with 0, 17
            txs[msg.sender]++
            return (0 / 990 * msg.value)
        if eth.balance(this.address) - msg.value and 1000 > -1 / eth.balance(this.address) - msg.value:
            revert with 0, 17
        if not eth.balance(this.address) - msg.value:
            revert with 0, 18
        if (1000 * eth.balance(this.address)) - (1000 * msg.value) / eth.balance(this.address) - msg.value != 1000:
            revert with 0, 1
        if (1000 * eth.balance(this.address)) - (1000 * msg.value) > !(990 * msg.value):
            revert with 0, 17
        if -10 * msg.value < -1000 * msg.value:
            revert with 0, 1
        if not (1000 * eth.balance(this.address)) - (10 * msg.value):
            revert with 0, 18
        if 0 / (1000 * eth.balance(this.address)) - (10 * msg.value) < arg1:
            revert with 0, 'tokens_bought >= min_tokens'
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / (1000 * eth.balance(this.address)) - (10 * msg.value)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer err'
        emit onTokenPurchase(msg.sender, msg.value, 0 / (1000 * eth.balance(this.address)) - (10 * msg.value));
        emit onContractBalance(eth.balance(this.address));
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return (0 / (1000 * eth.balance(this.address)) - (10 * msg.value))
    if 990 * msg.value and ext_call.return_data[0] > -1 / 990 * msg.value:
        revert with 0, 17
    if not 990 * msg.value:
        revert with 0, 18
    if 990 * msg.value * ext_call.return_data[0] / 990 * msg.value != ext_call.return_data[0]:
        revert with 0, 1
    if not -eth.balance(this.address) + msg.value:
        if 0 > !(990 * msg.value):
            revert with 0, 17
        if 990 * msg.value < 0:
            revert with 0, 1
        if not 990 * msg.value:
            revert with 0, 18
        if 990 * msg.value * ext_call.return_data[0] / 990 * msg.value < arg1:
            revert with 0, 'tokens_bought >= min_tokens'
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 990 * msg.value * ext_call.return_data[0] / 990 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer err'
        emit onTokenPurchase(msg.sender, msg.value, 990 * msg.value * ext_call.return_data[0] / 990 * msg.value);
        emit onContractBalance(eth.balance(this.address));
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return (990 * msg.value * ext_call.return_data[0] / 990 * msg.value)
    if eth.balance(this.address) - msg.value and 1000 > -1 / eth.balance(this.address) - msg.value:
        revert with 0, 17
    if not eth.balance(this.address) - msg.value:
        revert with 0, 18
    if (1000 * eth.balance(this.address)) - (1000 * msg.value) / eth.balance(this.address) - msg.value != 1000:
        revert with 0, 1
    if (1000 * eth.balance(this.address)) - (1000 * msg.value) > !(990 * msg.value):
        revert with 0, 17
    if -10 * msg.value < -1000 * msg.value:
        revert with 0, 1
    if not (1000 * eth.balance(this.address)) - (10 * msg.value):
        revert with 0, 18
    if 990 * msg.value * ext_call.return_data[0] / (1000 * eth.balance(this.address)) - (10 * msg.value) < arg1:
        revert with 0, 'tokens_bought >= min_tokens'
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 990 * msg.value * ext_call.return_data[0] / (1000 * eth.balance(this.address)) - (10 * msg.value)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer err'
    emit onTokenPurchase(msg.sender, msg.value, 990 * msg.value * ext_call.return_data[0] / (1000 * eth.balance(this.address)) - (10 * msg.value));
    emit onContractBalance(eth.balance(this.address));
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if not -eth.balance(this.address):
        if 10^18 > ext_call.return_data[0]:
            revert with 0, 1
        if ext_call.return_data[0] < 10^18:
            revert with 0, 17
        if not -ext_call.return_data[0] + 10^18:
            revert with 0, 18
        if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
            revert with 0, 17
        if not ext_call.return_data[0] - 10^18:
            revert with 0, 18
        if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
            revert with 0, 1
        if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
            revert with 0, 18
        if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
            revert with 0, 17
        if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
            revert with 0, 1
        if stor107 > block.timestamp:
            revert with 0, 1
        if block.timestamp < stor107:
            revert with 0, 17
        if block.timestamp - stor107 > stor108:
            if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
            stor107 = block.timestamp
        emit onContractBalance(eth.balance(this.address));
        emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    else:
        if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
            revert with 0, 1
        if not -1 * 10^18 * eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                revert with 0, 17
            if not 10^18 * eth.balance(this.address):
                revert with 0, 18
            if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                revert with 0, 1
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    if totalTxs > -2:
        revert with 0, 17
    totalTxs++
    if txs[msg.sender] > -2:
        revert with 0, 17
    txs[msg.sender]++
    return (990 * msg.value * ext_call.return_data[0] / (1000 * eth.balance(this.address)) - (10 * msg.value))
}

function tokenToBnbSwapInput(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if arg1 <= 0:
        revert with 0, 'tokens_sold > 0 && min_bnb > 0'
    if arg2 <= 0:
        revert with 0, 'tokens_sold > 0 && min_bnb > 0'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall tokenAddress.0x79a5b227 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_VALUE'
    if eth.balance(this.address) <= 0:
        revert with 0, 'INVALID_VALUE'
    if not -ext_call.return_data[0]:
        if not -ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0, 1
        if 1000 * ext_call.return_data[0] > -1:
            revert with 0, 17
        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
            revert with 0, 1
        if not 1000 * ext_call.return_data[0]:
            revert with 0, 18
        if 0 / 1000 * ext_call.return_data[0] < arg2:
            revert with 0, 'bnb_bought >= min_bnb'
        call msg.sender with:
           value 0 / 1000 * ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transforfrom error'
        emit onBnbPurchase(msg.sender, arg1, 0 / 1000 * ext_call.return_data[0]);
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return (0 / 1000 * ext_call.return_data[0])
    if ext_call.return_data[0] and 990 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 990 * ext_call.return_data[0] / ext_call.return_data[0] != 990:
        revert with 0, 1
    if not -990 * ext_call.return_data[0]:
        if not -ext_call.return_data[0]:
            if 0 > !(990 * ext_call.return_data[0]):
                revert with 0, 17
            if 990 * ext_call.return_data[0] < 0:
                revert with 0, 1
            if not 990 * ext_call.return_data[0]:
                revert with 0, 18
            if 0 / 990 * ext_call.return_data[0] < arg2:
                revert with 0, 'bnb_bought >= min_bnb'
            call msg.sender with:
               value 0 / 990 * ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'transforfrom error'
            emit onBnbPurchase(msg.sender, arg1, 0 / 990 * ext_call.return_data[0]);
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) <= 0:
                revert with 0, 'input_reserve & output reserve must >0'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'input_reserve & output reserve must >0'
            if not -eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                    revert with 0, 17
                if not eth.balance(this.address):
                    revert with 0, 18
                if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                    revert with 0, 1
                if not -1 * 10^18 * eth.balance(this.address):
                    if 10^18 > ext_call.return_data[0]:
                        revert with 0, 1
                    if ext_call.return_data[0] < 10^18:
                        revert with 0, 17
                    if not -ext_call.return_data[0] + 10^18:
                        revert with 0, 18
                    if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0] - 10^18:
                        revert with 0, 18
                    if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                        revert with 0, 1
                    if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                        revert with 0, 18
                    if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                        revert with 0, 17
                    if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                        revert with 0, 1
                    if stor107 > block.timestamp:
                        revert with 0, 1
                    if block.timestamp < stor107:
                        revert with 0, 17
                    if block.timestamp - stor107 > stor108:
                        if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor107 = block.timestamp
                    emit onContractBalance(eth.balance(this.address));
                    emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
                else:
                    if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                        revert with 0, 17
                    if not 10^18 * eth.balance(this.address):
                        revert with 0, 18
                    if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                        revert with 0, 1
                    if 10^18 > ext_call.return_data[0]:
                        revert with 0, 1
                    if ext_call.return_data[0] < 10^18:
                        revert with 0, 17
                    if not -ext_call.return_data[0] + 10^18:
                        revert with 0, 18
                    if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0] - 10^18:
                        revert with 0, 18
                    if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                        revert with 0, 1
                    if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                        revert with 0, 18
                    if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                        revert with 0, 17
                    if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                        revert with 0, 1
                    if stor107 > block.timestamp:
                        revert with 0, 1
                    if block.timestamp < stor107:
                        revert with 0, 17
                    if block.timestamp - stor107 > stor108:
                        if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor107 = block.timestamp
                    emit onContractBalance(eth.balance(this.address));
                    emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            if totalTxs > -2:
                revert with 0, 17
            totalTxs++
            if txs[msg.sender] > -2:
                revert with 0, 17
            txs[msg.sender]++
            return (0 / 990 * ext_call.return_data[0])
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0, 1
        if 1000 * ext_call.return_data[0] > !(990 * ext_call.return_data[0]):
            revert with 0, 17
        if 1990 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
            revert with 0, 1
        if not 1990 * ext_call.return_data[0]:
            revert with 0, 18
        if 0 / 1990 * ext_call.return_data[0] < arg2:
            revert with 0, 'bnb_bought >= min_bnb'
        call msg.sender with:
           value 0 / 1990 * ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transforfrom error'
        emit onBnbPurchase(msg.sender, arg1, 0 / 1990 * ext_call.return_data[0]);
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return (0 / 1990 * ext_call.return_data[0])
    if 990 * ext_call.return_data[0] and eth.balance(this.address) > -1 / 990 * ext_call.return_data[0]:
        revert with 0, 17
    if not 990 * ext_call.return_data[0]:
        revert with 0, 18
    if 990 * ext_call.return_data[0] * eth.balance(this.address) / 990 * ext_call.return_data[0] != eth.balance(this.address):
        revert with 0, 1
    if not -ext_call.return_data[0]:
        if 0 > !(990 * ext_call.return_data[0]):
            revert with 0, 17
        if 990 * ext_call.return_data[0] < 0:
            revert with 0, 1
        if not 990 * ext_call.return_data[0]:
            revert with 0, 18
        if 990 * ext_call.return_data[0] * eth.balance(this.address) / 990 * ext_call.return_data[0] < arg2:
            revert with 0, 'bnb_bought >= min_bnb'
        call msg.sender with:
           value 990 * ext_call.return_data[0] * eth.balance(this.address) / 990 * ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transforfrom error'
        emit onBnbPurchase(msg.sender, arg1, 990 * ext_call.return_data[0] * eth.balance(this.address) / 990 * ext_call.return_data[0]);
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'input_reserve & output reserve must >0'
        if not -eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
                revert with 0, 1
            if not -1 * 10^18 * eth.balance(this.address):
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                    revert with 0, 17
                if not 10^18 * eth.balance(this.address):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                    revert with 0, 1
                if 10^18 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 10^18:
                    revert with 0, 17
                if not -ext_call.return_data[0] + 10^18:
                    revert with 0, 18
                if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0] - 10^18:
                    revert with 0, 18
                if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                    revert with 0, 1
                if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 18
                if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                    revert with 0, 17
                if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                    revert with 0, 1
                if stor107 > block.timestamp:
                    revert with 0, 1
                if block.timestamp < stor107:
                    revert with 0, 17
                if block.timestamp - stor107 > stor108:
                    if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor107 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        if totalTxs > -2:
            revert with 0, 17
        totalTxs++
        if txs[msg.sender] > -2:
            revert with 0, 17
        txs[msg.sender]++
        return (990 * ext_call.return_data[0] * eth.balance(this.address) / 990 * ext_call.return_data[0])
    if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
        revert with 0, 1
    if 1000 * ext_call.return_data[0] > !(990 * ext_call.return_data[0]):
        revert with 0, 17
    if 1990 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
        revert with 0, 1
    if not 1990 * ext_call.return_data[0]:
        revert with 0, 18
    if 990 * ext_call.return_data[0] * eth.balance(this.address) / 1990 * ext_call.return_data[0] < arg2:
        revert with 0, 'bnb_bought >= min_bnb'
    call msg.sender with:
       value 990 * ext_call.return_data[0] * eth.balance(this.address) / 1990 * ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transforfrom error'
    emit onBnbPurchase(msg.sender, arg1, 990 * ext_call.return_data[0] * eth.balance(this.address) / 1990 * ext_call.return_data[0]);
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input_reserve & output reserve must >0'
    if not -eth.balance(this.address):
        if 10^18 > ext_call.return_data[0]:
            revert with 0, 1
        if ext_call.return_data[0] < 10^18:
            revert with 0, 17
        if not -ext_call.return_data[0] + 10^18:
            revert with 0, 18
        if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
            revert with 0, 17
        if not ext_call.return_data[0] - 10^18:
            revert with 0, 18
        if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
            revert with 0, 1
        if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
            revert with 0, 18
        if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
            revert with 0, 17
        if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
            revert with 0, 1
        if stor107 > block.timestamp:
            revert with 0, 1
        if block.timestamp < stor107:
            revert with 0, 17
        if block.timestamp - stor107 > stor108:
            if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
            stor107 = block.timestamp
        emit onContractBalance(eth.balance(this.address));
        emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    else:
        if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if 10^18 * eth.balance(this.address) / eth.balance(this.address) != 10^18:
            revert with 0, 1
        if not -1 * 10^18 * eth.balance(this.address):
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            if 10^18 * eth.balance(this.address) and 1000 > -1 / 10^18 * eth.balance(this.address):
                revert with 0, 17
            if not 10^18 * eth.balance(this.address):
                revert with 0, 18
            if 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) != 1000:
                revert with 0, 1
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 10^18:
                revert with 0, 17
            if not -ext_call.return_data[0] + 10^18:
                revert with 0, 18
            if ext_call.return_data[0] - 10^18 and 990 > -1 / ext_call.return_data[0] - 10^18:
                revert with 0, 17
            if not ext_call.return_data[0] - 10^18:
                revert with 0, 18
            if (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 != 990:
                revert with 0, 1
            if not (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 18
            if 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) > -2:
                revert with 0, 17
            if (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 < 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600):
                revert with 0, 1
            if stor107 > block.timestamp:
                revert with 0, 1
            if block.timestamp < stor107:
                revert with 0, 17
            if block.timestamp - stor107 > stor108:
                if eth.balance(this.address) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor107 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    if totalTxs > -2:
        revert with 0, 17
    totalTxs++
    if txs[msg.sender] > -2:
        revert with 0, 17
    txs[msg.sender]++
    return (990 * ext_call.return_data[0] * eth.balance(this.address) / 1990 * ext_call.return_data[0])
}



}
