contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#  - stake(uint256 arg1)
#
const getChainId = chainid

const ERC712_VERSION = '1', 0


uint256 domainSeperator;
mapping of uint256 nonce;
address vaultTokenAddress;
address sub_01fcfe06Address;
uint256 vestingPeriod;
uint256 vaultLimit;
uint256 interestRate;
uint256 genesis;
array of struct userVault;
uint256 totalSupply;
uint256 totalDeposits;
address owner;
mapping of uint256 balanceOf;

function sub_01fcfe06(?) {
    return sub_01fcfe06Address
}

function totalSupply() {
    return totalSupply
}

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function vaultToken() {
    return vaultTokenAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function vestingPeriod() {
    return vestingPeriod
}

function interestRate() {
    return interestRate
}

function totalDeposits() {
    return totalDeposits
}

function getOwner() {
    return owner
}

function genesis() {
    return genesis
}

function userVault(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < userVault[arg1].field_0
    return userVault[arg1][arg2].field_0, 
           userVault[arg1][arg2].field_256,
           userVault[arg1][arg2].field_512,
           userVault[arg1][arg2].field_768,
           userVault[arg1][arg2].field_1024,
           userVault[arg1][arg2].field_1280
}

function vaultLimit() {
    return vaultLimit
}

function _fallback() payable {
    revert
}

function getUserVaultInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[64] = (32 * userVault[address(arg1)].field_0) + 128
    mem[96] = userVault[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < userVault[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 10)
        _16 = mem[64]
        mem[64] = mem[64] + 192
        mem[_16] = userVault[address(arg1)][idx].field_0
        mem[_16 + 32] = userVault[address(arg1)][idx].field_256
        mem[_16 + 64] = userVault[address(arg1)][idx].field_512
        mem[_16 + 96] = userVault[address(arg1)][idx].field_768
        mem[_16 + 128] = userVault[address(arg1)][idx].field_1024
        mem[_16 + 160] = userVault[address(arg1)][idx].field_1280
        mem[s] = _16
        s = s + 32
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    _18 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _18:
        _27 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_27 + 32]
        mem[t + 64] = mem[_27 + 64]
        mem[t + 96] = mem[_27 + 96]
        mem[t + 128] = mem[_27 + 128]
        mem[t + 160] = mem[_27 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _17 + (192 * _18) + -mem[64] + 64
}

function rescueFunds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if genesis + vestingPeriod < genesis:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp <= genesis + vestingPeriod:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault: can't rescue before vesting'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
        if genesis + vestingPeriod < genesis:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp <= genesis + vestingPeriod:
            revert with 0, 'Vault: can't rescue before vesting'
    ('gt', 'timestamp', ('add', ('stor', ('name', 'genesis', 9)), ('stor', ('name', 'vestingPeriod', 6))))
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No balance for given token address'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[ceil32(arg2.length) + 128] = nonce[address(arg1)]
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 674] = msg.sender
    mem[ceil32(arg2.length) + 706] = 96
    mem[ceil32(arg2.length) + 738] = arg2.length
    mem[ceil32(arg2.length) + 770 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 770] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 674 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 674] = address(arg1)
    mem[ceil32(arg2.length) + arg2.length + 694 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 674 len floor32(arg2.length + 51) - ceil32(arg2.length)]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[ceil32(arg2.length) + (2 * arg2.length) + 714] = 0
    call this.address.mem[ceil32(arg2.length) + arg2.length + 694 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + arg2.length + 698 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[64] = (32 * userVault[address(arg1)].field_0) + 128
    mem[96] = userVault[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < userVault[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 10)
        _65 = mem[64]
        mem[64] = mem[64] + 192
        mem[_65] = userVault[address(arg1)][idx].field_0
        mem[_65 + 32] = userVault[address(arg1)][idx].field_256
        mem[_65 + 64] = userVault[address(arg1)][idx].field_512
        mem[_65 + 96] = userVault[address(arg1)][idx].field_768
        mem[_65 + 128] = userVault[address(arg1)][idx].field_1024
        mem[_65 + 160] = userVault[address(arg1)][idx].field_1280
        mem[s] = _65
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128]] > mem[mem[(32 * idx) + 128] + 128]:
            require idx < mem[96]
            require idx < mem[96]
            if block.timestamp <= mem[mem[(32 * idx) + 128] + 64]:
                if mem[mem[(32 * idx) + 128] + 96] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128]]:
                    if vestingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingPeriod
                    if 0 / vestingPeriod:
                        require 0 / vestingPeriod
                        if 0 / vestingPeriod * interestRate / 0 / vestingPeriod != interestRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / vestingPeriod * interestRate / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    require mem[mem[(32 * idx) + 128]]
                    if (block.timestamp * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / mem[mem[(32 * idx) + 128]] != block.timestamp - mem[mem[(32 * idx) + 128] + 96]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if vestingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingPeriod
                    if (block.timestamp * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod:
                        require (block.timestamp * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod
                        if (block.timestamp * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod * interestRate / (block.timestamp * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod != interestRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (block.timestamp * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod * interestRate / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
            else:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 96] > mem[mem[(32 * idx) + 128] + 64]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128]]:
                    if vestingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingPeriod
                    if 0 / vestingPeriod:
                        require 0 / vestingPeriod
                        if 0 / vestingPeriod * interestRate / 0 / vestingPeriod != interestRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / vestingPeriod * interestRate / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    require mem[mem[(32 * idx) + 128]]
                    if (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / mem[mem[(32 * idx) + 128]] != mem[mem[(32 * idx) + 128] + 64] - mem[mem[(32 * idx) + 128] + 96]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if vestingPeriod <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingPeriod
                    if (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod:
                        require (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod
                        if (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod * interestRate / (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod != interestRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (mem[mem[(32 * idx) + 128] + 64] * mem[mem[(32 * idx) + 128]]) - (mem[mem[(32 * idx) + 128] + 96] * mem[mem[(32 * idx) + 128]]) / vestingPeriod * interestRate / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}



}
