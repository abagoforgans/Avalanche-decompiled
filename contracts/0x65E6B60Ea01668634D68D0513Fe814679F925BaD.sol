contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _totalSupply;
uint8 isLocked;
array of address stor7;
array of struct stor8;
mapping of uint256 vaultAmount;
mapping of uint256 sub_2c4e4ded;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function sub_2c4e4ded(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    return sub_2c4e4ded[address(arg1)]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isLocked() {
    return bool(isLocked)
}

function newOwner() {
    return newOwner
}

function getVaultAmount() {
    return vaultAmount[address(msg.sender)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e198cc96(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    return vaultAmount[address(arg1)]
}

function sub_f11549bb(?) {
    return sub_2c4e4ded[address(msg.sender)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function setIsLocked(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    isLocked = uint8(arg1)
}

function addBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    stor7.length++
    stor7[stor7.length] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(owner, owner);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    _totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        require stor7[idx] != msg.sender
        idx = idx + 1
        continue 
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= _totalSupply
    _totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not isLocked
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        require stor7[idx] != msg.sender
        idx = idx + 1
        continue 
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_eff1655e(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg1
    require vaultAmount[address(arg1)] + arg2 >= vaultAmount[address(arg1)]
    vaultAmount[address(arg1)] += arg2
    sub_2c4e4ded[address(arg1)] = arg3
    require _totalSupply + arg2 >= _totalSupply
    _totalSupply += arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    stor8.length++
    stor8[stor8.length].field_0 = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not isLocked
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        require stor7[idx] != msg.sender
        idx = idx + 1
        continue 
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_ce385a92(?) {
    require msg.sender == owner
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = address(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function sub_5047071c(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require vaultAmount[address(arg1)] > 0
    require block.timestamp >= sub_2c4e4ded[address(arg1)]
    require balanceOf[address(this.address)] >= vaultAmount[address(arg1)]
    require balanceOf[address(arg1)] + vaultAmount[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += vaultAmount[address(arg1)]
    require vaultAmount[address(arg1)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= vaultAmount[address(arg1)]
    vaultAmount[address(arg1)] = 0
    require 0 < stor8.length
    idx = 0
    while stor8[idx].field_0 != arg1:
        require idx + 1 < stor8.length
        mem[0] = 8
        idx = idx + 1
        continue 
    require None + 2 < stor8.length
    require stor8.length - 1 < stor8.length
    if None + 3 != stor8.length:
        require None + 2 < stor8.length
        stor8[None].field_512 = stor8[stor8.length].field_0
    stor8[stor8.length].field_0 = 0
    stor8.length--
    if stor8.length > stor8.length - 1:
        idx = stor8.length - 1
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_2c4e4ded[address(arg1)] = 0
    vaultAmount[address(arg1)] = 0
}

function releaseToken() {
    require vaultAmount[address(msg.sender)] > 0
    require block.timestamp >= sub_2c4e4ded[address(msg.sender)]
    require balanceOf[address(this.address)] >= vaultAmount[address(msg.sender)]
    require balanceOf[address(msg.sender)] + vaultAmount[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += vaultAmount[address(msg.sender)]
    require vaultAmount[address(msg.sender)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= vaultAmount[address(msg.sender)]
    vaultAmount[address(msg.sender)] = 0
    require 0 < stor8.length
    idx = 0
    while stor8[idx].field_0 != msg.sender:
        require idx + 1 < stor8.length
        mem[0] = 8
        idx = idx + 1
        continue 
    require None + 2 < stor8.length
    require stor8.length - 1 < stor8.length
    if None + 3 != stor8.length:
        require None + 2 < stor8.length
        stor8[None].field_512 = stor8[stor8.length].field_0
    stor8[stor8.length].field_0 = 0
    stor8.length--
    if stor8.length > stor8.length - 1:
        idx = stor8.length - 1
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_2c4e4ded[address(msg.sender)] = 0
    vaultAmount[address(msg.sender)] = 0
}



}
