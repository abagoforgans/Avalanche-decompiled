contract main {




// =====================  Runtime code  =====================


const name = 'uidity Token'

const decimals = 18

const symbol = ''

const bnbBalance = eth.balance(this.address)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
mapping of uint8 stor4;
mapping of uint8 stor5;
address tokenAddress;
uint256 totalTxs;
uint256 stor8;
uint256 stor9;
uint256 providers;
mapping of uint8 stor11;
mapping of uint256 txs;
uint8 isPaused;

function totalSupply() {
    return totalSupply
}

function blackList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function txs(address arg1) {
    require calldata.size - 4 >= 32
    return txs[address(arg1)]
}

function totalTxs() {
    return totalTxs
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function tokenAddress() {
    return tokenAddress
}

function isPaused() {
    return bool(isPaused)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function providers() {
    return providers
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    isPaused = 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    isPaused = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, '4'
    if not msg.sender:
        revert with 0, '5'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    if not arg1:
        revert with 0, 'newowner not 0 address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    if stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function tokenBalance() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function removeAddressFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    if not stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'to address will not be 0'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x33ddf252: arg2, msg.sender, arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[msg.sender][address(arg1)]
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
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    if not arg1:
        revert with 0, '4'
    if not msg.sender:
        revert with 0, '5'
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_2926e227(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function addToBlackList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'to address will not be 0'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit 0x33ddf252: arg3, arg1, arg2
    require arg3 <= allowance[address(arg1)][msg.sender]
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
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if stor4[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function getLiquidityToReserveInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        revert with 0, 'total_liquidity > 0,,,,1'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if totalSupply:
            if not arg1:
                if totalSupply:
                    return 0 / totalSupply, 0 / totalSupply
            else:
                if ext_call.return_data[0] * arg1 / arg1 == ext_call.return_data[0]:
                    if totalSupply:
                        return 0 / totalSupply, ext_call.return_data[0] * arg1 / totalSupply
    else:
        if eth.balance(this.address) * arg1 / arg1 == eth.balance(this.address):
            if totalSupply:
                if not arg1:
                    if totalSupply:
                        return eth.balance(this.address) * arg1 / totalSupply, 0 / totalSupply
                else:
                    if ext_call.return_data[0] * arg1 / arg1 == ext_call.return_data[0]:
                        if totalSupply:
                            return eth.balance(this.address) * arg1 / totalSupply, ext_call.return_data[0] * arg1 / totalSupply
    revert
}

function getInputPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg2 <= 0:
        revert with 0, 'INVALID_VALUE'
    if arg3 <= 0:
        revert with 0, 'INVALID_VALUE'
    if not arg1:
        if arg2:
            if 1000 * arg2 / arg2 == 1000:
                if 1000 * arg2 >= 1000 * arg2:
                    if 1000 * arg2:
                        return (0 / 1000 * arg2)
    else:
        if 990 * arg1 / arg1 == 990:
            if not 990 * arg1:
                if not arg2:
                    if 990 * arg1 >= 0:
                        if 990 * arg1:
                            return (0 / 990 * arg1)
                else:
                    if 1000 * arg2 / arg2 == 1000:
                        if (990 * arg1) + (1000 * arg2) >= 1000 * arg2:
                            if (990 * arg1) + (1000 * arg2):
                                return (0 / (990 * arg1) + (1000 * arg2))
            else:
                if 990 * arg3 * arg1 / 990 * arg1 == arg3:
                    if not arg2:
                        if 990 * arg1 >= 0:
                            if 990 * arg1:
                                return (990 * arg3 * arg1 / 990 * arg1)
                    else:
                        if 1000 * arg2 / arg2 == 1000:
                            if (990 * arg1) + (1000 * arg2) >= 1000 * arg2:
                                if (990 * arg1) + (1000 * arg2):
                                    return (990 * arg3 * arg1 / (990 * arg1) + (1000 * arg2))
    revert
}

function getBnbToLiquidityInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'bnb_sold > 0,,,,,3'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if eth.balance(this.address):
            if (0 / eth.balance(this.address)) + 1 >= 0 / eth.balance(this.address):
                if not arg1:
                    if eth.balance(this.address):
                        return (0 / eth.balance(this.address))
                else:
                    if totalSupply * arg1 / arg1 == totalSupply:
                        if eth.balance(this.address):
                            return (totalSupply * arg1 / eth.balance(this.address))
    else:
        if ext_call.return_data[0] * arg1 / arg1 == ext_call.return_data[0]:
            if eth.balance(this.address):
                if (ext_call.return_data[0] * arg1 / eth.balance(this.address)) + 1 >= ext_call.return_data[0] * arg1 / eth.balance(this.address):
                    if not arg1:
                        if eth.balance(this.address):
                            return (0 / eth.balance(this.address))
                    else:
                        if totalSupply * arg1 / arg1 == totalSupply:
                            if eth.balance(this.address):
                                return (totalSupply * arg1 / eth.balance(this.address))
    revert
}

function getOutputPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not arg2:
        if arg1 <= arg3:
            if arg3 - arg1:
                if (990 * arg3) - (990 * arg1) / arg3 - arg1 == 990:
                    if (990 * arg3) - (990 * arg1):
                        if (0 / (990 * arg3) - (990 * arg1)) + 1 >= 0 / (990 * arg3) - (990 * arg1):
                            return ((0 / (990 * arg3) - (990 * arg1)) + 1)
    else:
        if arg1 * arg2 / arg2 == arg1:
            if not arg1 * arg2:
                if arg1 <= arg3:
                    if arg3 - arg1:
                        if (990 * arg3) - (990 * arg1) / arg3 - arg1 == 990:
                            if (990 * arg3) - (990 * arg1):
                                if (0 / (990 * arg3) - (990 * arg1)) + 1 >= 0 / (990 * arg3) - (990 * arg1):
                                    return ((0 / (990 * arg3) - (990 * arg1)) + 1)
            else:
                if 1000 * arg1 * arg2 / arg1 * arg2 == 1000:
                    if arg1 <= arg3:
                        if arg3 - arg1:
                            if (990 * arg3) - (990 * arg1) / arg3 - arg1 == 990:
                                if (990 * arg3) - (990 * arg1):
                                    if (1000 * arg1 * arg2 / (990 * arg3) - (990 * arg1)) + 1 >= 1000 * arg1 * arg2 / (990 * arg3) - (990 * arg1):
                                        return ((1000 * arg1 * arg2 / (990 * arg3) - (990 * arg1)) + 1)
    revert
}

function getTokenToBnbInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'token sold < 0,,,,,2'
    require ext_code.size(tokenAddress)
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
    if not arg1:
        if ext_call.return_data[0]:
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] == 1000:
                if 1000 * ext_call.return_data[0] >= 1000 * ext_call.return_data[0]:
                    if 1000 * ext_call.return_data[0]:
                        return (0 / 1000 * ext_call.return_data[0])
    else:
        if 990 * arg1 / arg1 == 990:
            if not 990 * arg1:
                if not ext_call.return_data[0]:
                    if 990 * arg1 >= 0:
                        if 990 * arg1:
                            return (0 / 990 * arg1)
                else:
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] == 1000:
                        if (990 * arg1) + (1000 * ext_call.return_data[0]) >= 1000 * ext_call.return_data[0]:
                            if (990 * arg1) + (1000 * ext_call.return_data[0]):
                                return (0 / (990 * arg1) + (1000 * ext_call.return_data[0]))
            else:
                if 990 * eth.balance(this.address) * arg1 / 990 * arg1 == eth.balance(this.address):
                    if not ext_call.return_data[0]:
                        if 990 * arg1 >= 0:
                            if 990 * arg1:
                                return (990 * eth.balance(this.address) * arg1 / 990 * arg1)
                    else:
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] == 1000:
                            if (990 * arg1) + (1000 * ext_call.return_data[0]) >= 1000 * ext_call.return_data[0]:
                                if (990 * arg1) + (1000 * ext_call.return_data[0]):
                                    return (990 * eth.balance(this.address) * arg1 / (990 * arg1) + (1000 * ext_call.return_data[0]))
    revert
}

function getBnbToTokenInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'bnb_sold > 0,,,1'
    require ext_code.size(tokenAddress)
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
    if not arg1:
        if eth.balance(this.address):
            if 1000 * eth.balance(this.address) / eth.balance(this.address) == 1000:
                if 1000 * eth.balance(this.address) >= 1000 * eth.balance(this.address):
                    if 1000 * eth.balance(this.address):
                        return (0 / 1000 * eth.balance(this.address))
    else:
        if 990 * arg1 / arg1 == 990:
            if not 990 * arg1:
                if not eth.balance(this.address):
                    if 990 * arg1 >= 0:
                        if 990 * arg1:
                            return (0 / 990 * arg1)
                else:
                    if 1000 * eth.balance(this.address) / eth.balance(this.address) == 1000:
                        if (990 * arg1) + (1000 * eth.balance(this.address)) >= 1000 * eth.balance(this.address):
                            if (990 * arg1) + (1000 * eth.balance(this.address)):
                                return (0 / (990 * arg1) + (1000 * eth.balance(this.address)))
            else:
                if 990 * ext_call.return_data[0] * arg1 / 990 * arg1 == ext_call.return_data[0]:
                    if not eth.balance(this.address):
                        if 990 * arg1 >= 0:
                            if 990 * arg1:
                                return (990 * ext_call.return_data[0] * arg1 / 990 * arg1)
                    else:
                        if 1000 * eth.balance(this.address) / eth.balance(this.address) == 1000:
                            if (990 * arg1) + (1000 * eth.balance(this.address)) >= 1000 * eth.balance(this.address):
                                if (990 * arg1) + (1000 * eth.balance(this.address)):
                                    return (990 * ext_call.return_data[0] * arg1 / (990 * arg1) + (1000 * eth.balance(this.address)))
    revert
}

function getBnbToTokenOutputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'tokens_bought > 0,,,1'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not eth.balance(this.address):
        if arg1 <= ext_call.return_data[0]:
            if ext_call.return_data[0] - arg1:
                if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 == 990:
                    if (990 * ext_call.return_data[0]) - (990 * arg1):
                        if (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (990 * arg1):
                            return ((0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
    else:
        if arg1 * eth.balance(this.address) / eth.balance(this.address) == arg1:
            if not arg1 * eth.balance(this.address):
                if arg1 <= ext_call.return_data[0]:
                    if ext_call.return_data[0] - arg1:
                        if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 == 990:
                            if (990 * ext_call.return_data[0]) - (990 * arg1):
                                if (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (990 * arg1):
                                    return ((0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
            else:
                if 1000 * arg1 * eth.balance(this.address) / arg1 * eth.balance(this.address) == 1000:
                    if arg1 <= ext_call.return_data[0]:
                        if ext_call.return_data[0] - arg1:
                            if (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 == 990:
                                if (990 * ext_call.return_data[0]) - (990 * arg1):
                                    if (1000 * arg1 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 >= 1000 * arg1 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (990 * arg1):
                                        return ((1000 * arg1 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
    revert
}

function getTokenToBnbOutputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'bnb_bought > 0,,,,2'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not ext_call.return_data[0]:
        if arg1 <= eth.balance(this.address):
            if eth.balance(this.address) - arg1:
                if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 == 990:
                    if (990 * eth.balance(this.address)) - (990 * arg1):
                        if (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 >= 0 / (990 * eth.balance(this.address)) - (990 * arg1):
                            return ((0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
    else:
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] == arg1:
            if not arg1 * ext_call.return_data[0]:
                if arg1 <= eth.balance(this.address):
                    if eth.balance(this.address) - arg1:
                        if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 == 990:
                            if (990 * eth.balance(this.address)) - (990 * arg1):
                                if (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 >= 0 / (990 * eth.balance(this.address)) - (990 * arg1):
                                    return ((0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
            else:
                if 1000 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] == 1000:
                    if arg1 <= eth.balance(this.address):
                        if eth.balance(this.address) - arg1:
                            if (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 == 990:
                                if (990 * eth.balance(this.address)) - (990 * arg1):
                                    if (1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 >= 1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1):
                                        return ((1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
    revert
}

function removeLiquidity(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x54616d6f756e74203e2030202626206d696e5f626e62203e2030202626206d696e5f746f6b656e73203e20302c3333,
                    mem[211 len 17]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x54616d6f756e74203e2030202626206d696e5f626e62203e2030202626206d696e5f746f6b656e73203e20302c3333,
                    mem[211 len 17]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x54616d6f756e74203e2030202626206d696e5f626e62203e2030202626206d696e5f746f6b656e73203e20302c3333,
                    mem[211 len 17]
    require totalSupply
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require totalSupply
        if not arg1:
            require totalSupply
            if 0 / totalSupply < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            55,
                            0x3128626e625f616d6f756e74203e3d206d696e5f626e6220262620746f6b656e5f616d6f756e74203e3d206d696e5f746f6b656e732c33,
                            mem[219 len 9]
            if 0 / totalSupply < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            55,
                            0x3128626e625f616d6f756e74203e3d206d696e5f626e6220262620746f6b656e5f616d6f756e74203e3d206d696e5f746f6b656e732c33,
                            mem[219 len 9]
            require arg1 <= balanceOf[msg.sender]
            balanceOf[msg.sender] -= arg1
            require arg1 <= totalSupply
            totalSupply -= arg1
            call msg.sender with:
               value 0 / totalSupply wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer error'
            emit onRemoveLiquidity(msg.sender, 0 / totalSupply, 0 / totalSupply);
            emit onLiquidity(msg.sender, balanceOf[msg.sender]);
            emit 0x33ddf252: arg1, msg.sender, 0
            return 0 / totalSupply, 0 / totalSupply
        require ext_call.return_data[0] * arg1 / arg1 == ext_call.return_data[0]
        require totalSupply
        if 0 / totalSupply < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x3128626e625f616d6f756e74203e3d206d696e5f626e6220262620746f6b656e5f616d6f756e74203e3d206d696e5f746f6b656e732c33,
                        mem[219 len 9]
        if ext_call.return_data[0] * arg1 / totalSupply < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x3128626e625f616d6f756e74203e3d206d696e5f626e6220262620746f6b656e5f616d6f756e74203e3d206d696e5f746f6b656e732c33,
                        mem[219 len 9]
        require arg1 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg1
        require arg1 <= totalSupply
        totalSupply -= arg1
        call msg.sender with:
           value 0 / totalSupply wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * arg1 / totalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer error'
        emit onRemoveLiquidity(msg.sender, 0 / totalSupply, ext_call.return_data[0] * arg1 / totalSupply);
        emit onLiquidity(msg.sender, balanceOf[msg.sender]);
        emit 0x33ddf252: arg1, msg.sender, 0
        return 0 / totalSupply, ext_call.return_data[0] * arg1 / totalSupply
    require eth.balance(this.address) * arg1 / arg1 == eth.balance(this.address)
    require totalSupply
    if not arg1:
        require totalSupply
        if eth.balance(this.address) * arg1 / totalSupply < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x3128626e625f616d6f756e74203e3d206d696e5f626e6220262620746f6b656e5f616d6f756e74203e3d206d696e5f746f6b656e732c33,
                        mem[219 len 9]
        if 0 / totalSupply < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x3128626e625f616d6f756e74203e3d206d696e5f626e6220262620746f6b656e5f616d6f756e74203e3d206d696e5f746f6b656e732c33,
                        mem[219 len 9]
        require arg1 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg1
        require arg1 <= totalSupply
        totalSupply -= arg1
        call msg.sender with:
           value eth.balance(this.address) * arg1 / totalSupply wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer error'
        emit onRemoveLiquidity(msg.sender, eth.balance(this.address) * arg1 / totalSupply, 0 / totalSupply);
        emit onLiquidity(msg.sender, balanceOf[msg.sender]);
        emit 0x33ddf252: arg1, msg.sender, 0
        return eth.balance(this.address) * arg1 / totalSupply, 0 / totalSupply
    require ext_call.return_data[0] * arg1 / arg1 == ext_call.return_data[0]
    require totalSupply
    if eth.balance(this.address) * arg1 / totalSupply < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x3128626e625f616d6f756e74203e3d206d696e5f626e6220262620746f6b656e5f616d6f756e74203e3d206d696e5f746f6b656e732c33,
                    mem[219 len 9]
    if ext_call.return_data[0] * arg1 / totalSupply < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x3128626e625f616d6f756e74203e3d206d696e5f626e6220262620746f6b656e5f616d6f756e74203e3d206d696e5f746f6b656e732c33,
                    mem[219 len 9]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    call msg.sender with:
       value eth.balance(this.address) * arg1 / totalSupply wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] * arg1 / totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer error'
    emit onRemoveLiquidity(msg.sender, eth.balance(this.address) * arg1 / totalSupply, ext_call.return_data[0] * arg1 / totalSupply);
    emit onLiquidity(msg.sender, balanceOf[msg.sender]);
    emit 0x33ddf252: arg1, msg.sender, 0
    return eth.balance(this.address) * arg1 / totalSupply, ext_call.return_data[0] * arg1 / totalSupply
}

function addLiquidity(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 21, 0xef796f7520617265206e6f7420746865206f776e657200000000000000000000
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x3053776170236164644c69717569646974793a20494e56414c49445f415247554d454e,
                    mem[199 len 29]
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x3053776170236164644c69717569646974793a20494e56414c49445f415247554d454e,
                    mem[199 len 29]
    if not stor11[msg.sender]:
        stor11[msg.sender] = 1
        providers++
    if not totalSupply:
        if msg.value < 10^18:
            revert with 0, 'INVALID_VALUE'
        totalSupply = eth.balance(this.address)
        balanceOf[msg.sender] = eth.balance(this.address)
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transforfrom 5 error'
        emit onAddLiquidity(msg.sender, msg.value, arg2);
        emit onLiquidity(msg.sender, balanceOf[msg.sender]);
        emit 0x33ddf252: eth.balance(this.address), 0, msg.sender
        return eth.balance(this.address)
    if arg1 <= 0:
        revert with 0, 'min_liquidity > 0,,,,4'
    require msg.value <= eth.balance(this.address)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require eth.balance(this.address) - msg.value
        require (0 / eth.balance(this.address) - msg.value) + 1 >= 0 / eth.balance(this.address) - msg.value
        if not msg.value:
            require eth.balance(this.address) - msg.value
            if arg2 < (0 / eth.balance(this.address) - msg.value) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            68,
                            0x6d61785f746f6b656e73203e3d20746f6b656e5f616d6f756e74202626206c69717569646974795f6d696e746564203e3d206d696e5f6c69717569646974792c2c2c2c00,
                            mem[232 len 28]
            if 0 / eth.balance(this.address) - msg.value < arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            68,
                            0x6d61785f746f6b656e73203e3d20746f6b656e5f616d6f756e74202626206c69717569646974795f6d696e746564203e3d206d696e5f6c69717569646974792c2c2c2c00,
                            mem[232 len 28]
            require (0 / eth.balance(this.address) - msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += 0 / eth.balance(this.address) - msg.value
            require (0 / eth.balance(this.address) - msg.value) + totalSupply >= totalSupply
            totalSupply += 0 / eth.balance(this.address) - msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, (0 / eth.balance(this.address) - msg.value) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfrom4 error'
            emit onAddLiquidity(msg.sender, msg.value, (0 / eth.balance(this.address) - msg.value) + 1);
            emit onLiquidity(msg.sender, balanceOf[msg.sender]);
            emit 0x33ddf252: (0 / eth.balance(this.address) - msg.value), 0, msg.sender
            return (0 / eth.balance(this.address) - msg.value)
        require totalSupply * msg.value / msg.value == totalSupply
        require eth.balance(this.address) - msg.value
        if arg2 < (0 / eth.balance(this.address) - msg.value) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        68,
                        0x6d61785f746f6b656e73203e3d20746f6b656e5f616d6f756e74202626206c69717569646974795f6d696e746564203e3d206d696e5f6c69717569646974792c2c2c2c00,
                        mem[232 len 28]
        if totalSupply * msg.value / eth.balance(this.address) - msg.value < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        68,
                        0x6d61785f746f6b656e73203e3d20746f6b656e5f616d6f756e74202626206c69717569646974795f6d696e746564203e3d206d696e5f6c69717569646974792c2c2c2c00,
                        mem[232 len 28]
        require (totalSupply * msg.value / eth.balance(this.address) - msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += totalSupply * msg.value / eth.balance(this.address) - msg.value
        require (totalSupply * msg.value / eth.balance(this.address) - msg.value) + totalSupply >= totalSupply
        totalSupply += totalSupply * msg.value / eth.balance(this.address) - msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, (0 / eth.balance(this.address) - msg.value) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfrom4 error'
        emit onAddLiquidity(msg.sender, msg.value, (0 / eth.balance(this.address) - msg.value) + 1);
    else:
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
        require eth.balance(this.address) - msg.value
        require (ext_call.return_data[0] * msg.value / eth.balance(this.address) - msg.value) + 1 >= ext_call.return_data[0] * msg.value / eth.balance(this.address) - msg.value
        if not msg.value:
            require eth.balance(this.address) - msg.value
            if arg2 < (ext_call.return_data[0] * msg.value / eth.balance(this.address) - msg.value) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            68,
                            0x6d61785f746f6b656e73203e3d20746f6b656e5f616d6f756e74202626206c69717569646974795f6d696e746564203e3d206d696e5f6c69717569646974792c2c2c2c00,
                            mem[232 len 28]
            if 0 / eth.balance(this.address) - msg.value < arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            68,
                            0x6d61785f746f6b656e73203e3d20746f6b656e5f616d6f756e74202626206c69717569646974795f6d696e746564203e3d206d696e5f6c69717569646974792c2c2c2c00,
                            mem[232 len 28]
            require (0 / eth.balance(this.address) - msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += 0 / eth.balance(this.address) - msg.value
            require (0 / eth.balance(this.address) - msg.value) + totalSupply >= totalSupply
            totalSupply += 0 / eth.balance(this.address) - msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, (ext_call.return_data[0] * msg.value / eth.balance(this.address) - msg.value) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfrom4 error'
            emit onAddLiquidity(msg.sender, msg.value, (ext_call.return_data[0] * msg.value / eth.balance(this.address) - msg.value) + 1);
            emit onLiquidity(msg.sender, balanceOf[msg.sender]);
            emit 0x33ddf252: (0 / eth.balance(this.address) - msg.value), 0, msg.sender
            return (0 / eth.balance(this.address) - msg.value)
        require totalSupply * msg.value / msg.value == totalSupply
        require eth.balance(this.address) - msg.value
        if arg2 < (ext_call.return_data[0] * msg.value / eth.balance(this.address) - msg.value) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        68,
                        0x6d61785f746f6b656e73203e3d20746f6b656e5f616d6f756e74202626206c69717569646974795f6d696e746564203e3d206d696e5f6c69717569646974792c2c2c2c00,
                        mem[232 len 28]
        if totalSupply * msg.value / eth.balance(this.address) - msg.value < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        68,
                        0x6d61785f746f6b656e73203e3d20746f6b656e5f616d6f756e74202626206c69717569646974795f6d696e746564203e3d206d696e5f6c69717569646974792c2c2c2c00,
                        mem[232 len 28]
        require (totalSupply * msg.value / eth.balance(this.address) - msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += totalSupply * msg.value / eth.balance(this.address) - msg.value
        require (totalSupply * msg.value / eth.balance(this.address) - msg.value) + totalSupply >= totalSupply
        totalSupply += totalSupply * msg.value / eth.balance(this.address) - msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, (ext_call.return_data[0] * msg.value / eth.balance(this.address) - msg.value) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfrom4 error'
        emit onAddLiquidity(msg.sender, msg.value, (ext_call.return_data[0] * msg.value / eth.balance(this.address) - msg.value) + 1);
    emit onLiquidity(msg.sender, balanceOf[msg.sender]);
    emit 0x33ddf252: (totalSupply * msg.value / eth.balance(this.address) - msg.value), 0, msg.sender
    return (totalSupply * msg.value / eth.balance(this.address) - msg.value)
}

function bnbToTokenSwapOutput(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender] != 1:
        revert with 0, 'No Blacklist calls'
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if arg1 <= 0:
        revert with 0, 'tokens_bought > 0 && max_bnb >'
    if msg.value <= 0:
        revert with 0, 'tokens_bought > 0 && max_bnb >'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value <= eth.balance(this.address)
    if eth.balance(this.address) - msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not eth.balance(this.address) - msg.value:
        require arg1 <= ext_call.return_data[0]
        require ext_call.return_data[0] - arg1
        require (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 == 990
        require (990 * ext_call.return_data[0]) - (990 * arg1)
        require (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (990 * arg1)
        require (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 <= msg.value
        if msg.value + -(0 / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1:
            call msg.sender with:
               value msg.value + -(0 / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'error'
        emit onTokenPurchase(msg.sender, (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1, arg1);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return ((0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
    require (eth.balance(this.address) * arg1) - (msg.value * arg1) / eth.balance(this.address) - msg.value == arg1
    if not (eth.balance(this.address) * arg1) - (msg.value * arg1):
        require arg1 <= ext_call.return_data[0]
        require ext_call.return_data[0] - arg1
        require (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 == 990
        require (990 * ext_call.return_data[0]) - (990 * arg1)
        require (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (990 * arg1)
        require (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 <= msg.value
        if msg.value + -(0 / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1:
            call msg.sender with:
               value msg.value + -(0 / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'error'
        emit onTokenPurchase(msg.sender, (0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1, arg1);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return ((0 / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
    require (1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (eth.balance(this.address) * arg1) - (msg.value * arg1) == 1000
    require arg1 <= ext_call.return_data[0]
    require ext_call.return_data[0] - arg1
    require (990 * ext_call.return_data[0]) - (990 * arg1) / ext_call.return_data[0] - arg1 == 990
    require (990 * ext_call.return_data[0]) - (990 * arg1)
    require ((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 >= (1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)
    require ((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1 <= msg.value
    if msg.value + -((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1:
        call msg.sender with:
           value msg.value + -((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) - 1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'error'
    emit onTokenPurchase(msg.sender, ((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1, arg1);
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not eth.balance(this.address):
        require 10^18 <= ext_call.return_data[0]
        require ext_call.return_data[0] - 10^18
        require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
        require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
        require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
        if stor8 <= block.timestamp:
            if block.timestamp - stor8 > stor9:
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor8 = block.timestamp
        else:
            if 0 > stor9:
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor8 = block.timestamp
        emit onContractBalance(eth.balance(this.address));
        emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    else:
        require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
        if not 10^18 * eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    totalTxs++
    txs[msg.sender]++
    return (((1000 * eth.balance(this.address) * arg1) - (1000 * msg.value * arg1) / (990 * ext_call.return_data[0]) - (990 * arg1)) + 1)
}

function tokenToBnbSwapOutput(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender] != 1:
        revert with 0, 'No Blacklist calls'
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if arg1 <= 0:
        revert with 0, 'bnb_bought > 0'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not ext_call.return_data[0]:
        require arg1 <= eth.balance(this.address)
        require eth.balance(this.address) - arg1
        require (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 == 990
        require (990 * eth.balance(this.address)) - (990 * arg1)
        require (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 >= 0 / (990 * eth.balance(this.address)) - (990 * arg1)
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.calculateTransferTaxes(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if arg2 < ext_call.return_data[32] + (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1:
            revert with 0, 'max tokens exceeded'
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[32] + (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transorfroom error'
        emit onBnbPurchase(msg.sender, ext_call.return_data[32] + (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1, arg1);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return (ext_call.return_data[32] + (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
    require arg1 * ext_call.return_data[0] / ext_call.return_data[0] == arg1
    if not arg1 * ext_call.return_data[0]:
        require arg1 <= eth.balance(this.address)
        require eth.balance(this.address) - arg1
        require (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 == 990
        require (990 * eth.balance(this.address)) - (990 * arg1)
        require (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 >= 0 / (990 * eth.balance(this.address)) - (990 * arg1)
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.calculateTransferTaxes(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if arg2 < ext_call.return_data[32] + (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1:
            revert with 0, 'max tokens exceeded'
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[32] + (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transorfroom error'
        emit onBnbPurchase(msg.sender, ext_call.return_data[32] + (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1, arg1);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return (ext_call.return_data[32] + (0 / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
    require 1000 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] == 1000
    require arg1 <= eth.balance(this.address)
    require eth.balance(this.address) - arg1
    require (990 * eth.balance(this.address)) - (990 * arg1) / eth.balance(this.address) - arg1 == 990
    require (990 * eth.balance(this.address)) - (990 * arg1)
    require (1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)) + 1 >= 1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.calculateTransferTaxes(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, (1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg2 < ext_call.return_data[32] + (1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)) + 1:
        revert with 0, 'max tokens exceeded'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[32] + (1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transorfroom error'
    emit onBnbPurchase(msg.sender, ext_call.return_data[32] + (1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)) + 1, arg1);
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not eth.balance(this.address):
        require 10^18 <= ext_call.return_data[0]
        require ext_call.return_data[0] - 10^18
        require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
        require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
        require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
        if stor8 <= block.timestamp:
            if block.timestamp - stor8 > stor9:
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor8 = block.timestamp
        else:
            if 0 > stor9:
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor8 = block.timestamp
        emit onContractBalance(eth.balance(this.address));
        emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    else:
        require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
        if not 10^18 * eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    totalTxs++
    txs[msg.sender]++
    return (ext_call.return_data[32] + (1000 * arg1 * ext_call.return_data[0] / (990 * eth.balance(this.address)) - (990 * arg1)) + 1)
}

function bnbToTokenSwapInput(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender] != 1:
        revert with 0, 'No Blacklist calls'
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if msg.value <= 0:
        revert with 0, 'sold and min 0'
    if arg1 <= 0:
        revert with 0, 'sold and min 0'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value <= eth.balance(this.address)
    if eth.balance(this.address) - msg.value <= 0:
        revert with 0, 'INVALID_VALUE'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_VALUE'
    if not msg.value:
        require eth.balance(this.address) - msg.value
        require (1000 * eth.balance(this.address)) - (1000 * msg.value) / eth.balance(this.address) - msg.value == 1000
        require (1000 * eth.balance(this.address)) - (1000 * msg.value)
        if 0 / (1000 * eth.balance(this.address)) - (1000 * msg.value) < arg1:
            revert with 0, 'tokens_bought >= min_tokens'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / (1000 * eth.balance(this.address)) - (1000 * msg.value)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer err'
        emit onTokenPurchase(msg.sender, msg.value, 0 / (1000 * eth.balance(this.address)) - (1000 * msg.value));
        emit onContractBalance(eth.balance(this.address));
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return (0 / (1000 * eth.balance(this.address)) - (1000 * msg.value))
    require 990 * msg.value / msg.value == 990
    if not 990 * msg.value:
        if not eth.balance(this.address) - msg.value:
            require 990 * msg.value >= 0
            require 990 * msg.value
            if 0 / 990 * msg.value < arg1:
                revert with 0, 'tokens_bought >= min_tokens'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / 990 * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer err'
            emit onTokenPurchase(msg.sender, msg.value, 0 / 990 * msg.value);
            emit onContractBalance(eth.balance(this.address));
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                            mem[202 len 26]
            if ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                            mem[202 len 26]
            if not eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
                if not 10^18 * eth.balance(this.address):
                    require 10^18 <= ext_call.return_data[0]
                    require ext_call.return_data[0] - 10^18
                    require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                    require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                    require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                    if stor8 <= block.timestamp:
                        if block.timestamp - stor8 > stor9:
                            emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                            stor8 = block.timestamp
                    else:
                        if 0 > stor9:
                            emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                            stor8 = block.timestamp
                    emit onContractBalance(eth.balance(this.address));
                    emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
                else:
                    require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                    require 10^18 <= ext_call.return_data[0]
                    require ext_call.return_data[0] - 10^18
                    require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                    require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                    require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                    if stor8 <= block.timestamp:
                        if block.timestamp - stor8 > stor9:
                            emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                            stor8 = block.timestamp
                    else:
                        if 0 > stor9:
                            emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                            stor8 = block.timestamp
                    emit onContractBalance(eth.balance(this.address));
                    emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            totalTxs++
            txs[msg.sender]++
            return (0 / 990 * msg.value)
        require (1000 * eth.balance(this.address)) - (1000 * msg.value) / eth.balance(this.address) - msg.value == 1000
        require -10 * msg.value >= -1000 * msg.value
        require (-10 * msg.value) + (1000 * eth.balance(this.address))
        if 0 / (-10 * msg.value) + (1000 * eth.balance(this.address)) < arg1:
            revert with 0, 'tokens_bought >= min_tokens'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / (-10 * msg.value) + (1000 * eth.balance(this.address))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer err'
        emit onTokenPurchase(msg.sender, msg.value, 0 / (-10 * msg.value) + (1000 * eth.balance(this.address)));
        emit onContractBalance(eth.balance(this.address));
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return (0 / (-10 * msg.value) + (1000 * eth.balance(this.address)))
    require 990 * ext_call.return_data[0] * msg.value / 990 * msg.value == ext_call.return_data[0]
    if not eth.balance(this.address) - msg.value:
        require 990 * msg.value >= 0
        require 990 * msg.value
        if 990 * ext_call.return_data[0] * msg.value / 990 * msg.value < arg1:
            revert with 0, 'tokens_bought >= min_tokens'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 990 * ext_call.return_data[0] * msg.value / 990 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer err'
        emit onTokenPurchase(msg.sender, msg.value, 990 * ext_call.return_data[0] * msg.value / 990 * msg.value);
        emit onContractBalance(eth.balance(this.address));
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return (990 * ext_call.return_data[0] * msg.value / 990 * msg.value)
    require (1000 * eth.balance(this.address)) - (1000 * msg.value) / eth.balance(this.address) - msg.value == 1000
    require -10 * msg.value >= -1000 * msg.value
    require (-10 * msg.value) + (1000 * eth.balance(this.address))
    if 990 * ext_call.return_data[0] * msg.value / (-10 * msg.value) + (1000 * eth.balance(this.address)) < arg1:
        revert with 0, 'tokens_bought >= min_tokens'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 990 * ext_call.return_data[0] * msg.value / (-10 * msg.value) + (1000 * eth.balance(this.address))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer err'
    emit onTokenPurchase(msg.sender, msg.value, 990 * ext_call.return_data[0] * msg.value / (-10 * msg.value) + (1000 * eth.balance(this.address)));
    emit onContractBalance(eth.balance(this.address));
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not eth.balance(this.address):
        require 10^18 <= ext_call.return_data[0]
        require ext_call.return_data[0] - 10^18
        require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
        require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
        require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
        if stor8 <= block.timestamp:
            if block.timestamp - stor8 > stor9:
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor8 = block.timestamp
        else:
            if 0 > stor9:
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor8 = block.timestamp
        emit onContractBalance(eth.balance(this.address));
        emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    else:
        require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
        if not 10^18 * eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    totalTxs++
    txs[msg.sender]++
    return (990 * ext_call.return_data[0] * msg.value / (-10 * msg.value) + (1000 * eth.balance(this.address)))
}

function tokenToBnbSwapInput(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender] != 1:
        revert with 0, 'No Blacklist calls'
    if isPaused:
        revert with 0, 'Swaps currently paused'
    if arg1 <= 0:
        revert with 0, 'tokens_sold > 0 && min_bnb > 0'
    if arg2 <= 0:
        revert with 0, 'tokens_sold > 0 && min_bnb > 0'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.calculateTransferTaxes(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_VALUE'
    if eth.balance(this.address) <= 0:
        revert with 0, 'INVALID_VALUE'
    if not ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 1000 * ext_call.return_data[0] / ext_call.return_data[0] == 1000
        require 1000 * ext_call.return_data[0] >= 1000 * ext_call.return_data[0]
        require 1000 * ext_call.return_data[0]
        if 0 / 1000 * ext_call.return_data[0] < arg2:
            revert with 0, 'bnb_bought >= min_bnb'
        call msg.sender with:
           value 0 / 1000 * ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transforfrom error'
        emit onBnbPurchase(msg.sender, arg1, 0 / 1000 * ext_call.return_data[0]);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return (0 / 1000 * ext_call.return_data[0])
    require 990 * ext_call.return_data[0] / ext_call.return_data[0] == 990
    if not 990 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            require 990 * ext_call.return_data[0] >= 0
            require 990 * ext_call.return_data[0]
            if 0 / 990 * ext_call.return_data[0] < arg2:
                revert with 0, 'bnb_bought >= min_bnb'
            call msg.sender with:
               value 0 / 990 * ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transforfrom error'
            emit onBnbPurchase(msg.sender, arg1, 0 / 990 * ext_call.return_data[0]);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                            mem[202 len 26]
            if ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                            mem[202 len 26]
            if not eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
                if not 10^18 * eth.balance(this.address):
                    require 10^18 <= ext_call.return_data[0]
                    require ext_call.return_data[0] - 10^18
                    require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                    require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                    require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                    if stor8 <= block.timestamp:
                        if block.timestamp - stor8 > stor9:
                            emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                            stor8 = block.timestamp
                    else:
                        if 0 > stor9:
                            emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                            stor8 = block.timestamp
                    emit onContractBalance(eth.balance(this.address));
                    emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
                else:
                    require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                    require 10^18 <= ext_call.return_data[0]
                    require ext_call.return_data[0] - 10^18
                    require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                    require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                    require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                    if stor8 <= block.timestamp:
                        if block.timestamp - stor8 > stor9:
                            emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                            stor8 = block.timestamp
                    else:
                        if 0 > stor9:
                            emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                            stor8 = block.timestamp
                    emit onContractBalance(eth.balance(this.address));
                    emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            totalTxs++
            txs[msg.sender]++
            return (0 / 990 * ext_call.return_data[0])
        require 1000 * ext_call.return_data[0] / ext_call.return_data[0] == 1000
        require 1990 * ext_call.return_data[0] >= 1000 * ext_call.return_data[0]
        require 1990 * ext_call.return_data[0]
        if 0 / 1990 * ext_call.return_data[0] < arg2:
            revert with 0, 'bnb_bought >= min_bnb'
        call msg.sender with:
           value 0 / 1990 * ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transforfrom error'
        emit onBnbPurchase(msg.sender, arg1, 0 / 1990 * ext_call.return_data[0]);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return (0 / 1990 * ext_call.return_data[0])
    require 990 * eth.balance(this.address) * ext_call.return_data[0] / 990 * ext_call.return_data[0] == eth.balance(this.address)
    if not ext_call.return_data[0]:
        require 990 * ext_call.return_data[0] >= 0
        require 990 * ext_call.return_data[0]
        if 990 * eth.balance(this.address) * ext_call.return_data[0] / 990 * ext_call.return_data[0] < arg2:
            revert with 0, 'bnb_bought >= min_bnb'
        call msg.sender with:
           value 990 * eth.balance(this.address) * ext_call.return_data[0] / 990 * ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transforfrom error'
        emit onBnbPurchase(msg.sender, arg1, 990 * eth.balance(this.address) * ext_call.return_data[0] / 990 * ext_call.return_data[0]);
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                        mem[202 len 26]
        if not eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
            if not 10^18 * eth.balance(this.address):
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
            else:
                require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
                require 10^18 <= ext_call.return_data[0]
                require ext_call.return_data[0] - 10^18
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
                require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
                if stor8 <= block.timestamp:
                    if block.timestamp - stor8 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                else:
                    if 0 > stor9:
                        emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                        stor8 = block.timestamp
                emit onContractBalance(eth.balance(this.address));
                emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        totalTxs++
        txs[msg.sender]++
        return (990 * eth.balance(this.address) * ext_call.return_data[0] / 990 * ext_call.return_data[0])
    require 1000 * ext_call.return_data[0] / ext_call.return_data[0] == 1000
    require 1990 * ext_call.return_data[0] >= 1000 * ext_call.return_data[0]
    require 1990 * ext_call.return_data[0]
    if 990 * eth.balance(this.address) * ext_call.return_data[0] / 1990 * ext_call.return_data[0] < arg2:
        revert with 0, 'bnb_bought >= min_bnb'
    call msg.sender with:
       value 990 * eth.balance(this.address) * ext_call.return_data[0] / 1990 * ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transforfrom error'
    emit onBnbPurchase(msg.sender, arg1, 990 * eth.balance(this.address) * ext_call.return_data[0] / 1990 * ext_call.return_data[0]);
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe696e7075745f726573657276652026206f75747075742072657365727665206d757374203e,
                    mem[202 len 26]
    if not eth.balance(this.address):
        require 10^18 <= ext_call.return_data[0]
        require ext_call.return_data[0] - 10^18
        require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
        require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
        require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
        if stor8 <= block.timestamp:
            if block.timestamp - stor8 > stor9:
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor8 = block.timestamp
        else:
            if 0 > stor9:
                emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                stor8 = block.timestamp
        emit onContractBalance(eth.balance(this.address));
        emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    else:
        require 10^18 * eth.balance(this.address) / eth.balance(this.address) == 10^18
        if not 10^18 * eth.balance(this.address):
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((0 / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
        else:
            require 1000 * 10^18 * eth.balance(this.address) / 10^18 * eth.balance(this.address) == 1000
            require 10^18 <= ext_call.return_data[0]
            require ext_call.return_data[0] - 10^18
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600) / ext_call.return_data[0] - 10^18 == 990
            require (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            require (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1 >= 1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)
            if stor8 <= block.timestamp:
                if block.timestamp - stor8 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            else:
                if 0 > stor9:
                    emit onSummary(2 * eth.balance(this.address), (1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1);
                    stor8 = block.timestamp
            emit onContractBalance(eth.balance(this.address));
            emit onPrice(((1000 * 10^18 * eth.balance(this.address) / (990 * ext_call.return_data[0]) - (275 * 10^15 * 3600)) + 1));
    totalTxs++
    txs[msg.sender]++
    return (990 * eth.balance(this.address) * ext_call.return_data[0] / 1990 * ext_call.return_data[0])
}



}
