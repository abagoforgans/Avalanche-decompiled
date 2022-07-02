contract main {




// =====================  Runtime code  =====================


#
#  - getAllRewards(address arg1)
#  - claimAll()
#
const sub_12b353b1(?) = 11574074074074

const decimals = 18

const sub_9246fa28(?) = 23148148148148

const sub_a64283cc(?) = 34722222222222

const MAX_WALLET_STAKED = 30


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint256 maxSupply;
uint256 sub_07c6f852;
uint256 _price;
uint256 minted;
address sub_ce19b4c2Address;
address sub_d36de14fAddress;
uint8 stor12; offset 160
uint8 stor12; offset 168
uint128 stor12; offset 168
uint128 stor12; offset 160
address sub_aae719d8Address;
mapping of uint256 stor13;
mapping of address sub_f0a11bc6;
array of struct stor15;
mapping of uint256 stor16;
mapping of address sub_8a04b4c1;
array of struct stor18;
mapping of uint256 stor19;
mapping of address sub_41183577;
array of struct stor21;
address stor22;
address stor23;
address stor24;

function sub_07c6f852(?) {
    return sub_07c6f852
}

function totalSupply() {
    return totalSupply
}

function _price() {
    return _price
}

function sub_41183577(?) {
    require calldata.size - 4 >= 32
    return address(sub_41183577[arg1])
}

function minted() {
    return minted
}

function paused() {
    return bool(uint8(stor12.field_168))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8a04b4c1(?) {
    require calldata.size - 4 >= 32
    return address(sub_8a04b4c1[arg1])
}

function owner() {
    return owner
}

function sub_aae719d8(?) {
    return sub_aae719d8Address
}

function sub_ce19b4c2(?) {
    return sub_ce19b4c2Address
}

function sub_d36de14f(?) {
    return sub_d36de14fAddress
}

function maxSupply() {
    return maxSupply
}

function stakingLive() {
    return bool(uint8(stor12.field_160))
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f0a11bc6(?) {
    require calldata.size - 4 >= 32
    return address(sub_f0a11bc6[arg1])
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

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _price = arg1
}

function setMaxMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_07c6f852 = arg1
}

function toggle() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor12.field_160) = Mask(96, 0, not uint8(stor12.field_160))
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor12.field_168) = Mask(88, 0, arg1)
}

function setPartnerAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_aae719d8Address = arg1
    stor24 = arg1
}

function sub_5680245b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d36de14fAddress = address(arg1)
    stor23 = address(arg1)
}

function sub_56c0daac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ce19b4c2Address = address(arg1)
    stor22 = address(arg1)
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

function sub_005844e4(?) {
    require calldata.size - 4 >= 32
    if not address(sub_41183577[arg1]):
        revert with 0, 'TOKEN_NOT_STAKED'
    if block.timestamp < stor19[arg1]:
        revert with 0, 17
    if block.timestamp - stor19[arg1] and 23148148148148 > -1 / block.timestamp - stor19[arg1]:
        revert with 0, 17
    return ((23148148148148 * block.timestamp) - (23148148148148 * stor19[arg1]))
}

function sub_8b7eccb6(?) {
    require calldata.size - 4 >= 32
    if not address(sub_f0a11bc6[arg1]):
        revert with 0, 'TOKEN_NOT_STAKED'
    if block.timestamp < stor13[arg1]:
        revert with 0, 17
    if block.timestamp - stor13[arg1] and 34722222222222 > -1 / block.timestamp - stor13[arg1]:
        revert with 0, 17
    return ((34722222222222 * block.timestamp) - (34722222222222 * stor13[arg1]))
}

function sub_9bf3a93d(?) {
    require calldata.size - 4 >= 32
    if not address(sub_8a04b4c1[arg1]):
        revert with 0, 'TOKEN_NOT_STAKED'
    if block.timestamp < stor16[arg1]:
        revert with 0, 17
    if block.timestamp - stor16[arg1] and 23148148148148 > -1 / block.timestamp - stor16[arg1]:
        revert with 0, 17
    return ((23148148148148 * block.timestamp) - (23148148148148 * stor16[arg1]))
}

function getStakedCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor15[address(arg1)].field_0 > !stor18[address(arg1)].field_0:
        revert with 0, 17
    if stor15[address(arg1)].field_0 + stor18[address(arg1)].field_0 > !stor21[address(arg1)].field_0:
        revert with 0, 17
    return (stor15[address(arg1)].field_0 + stor18[address(arg1)].field_0 + stor21[address(arg1)].field_0)
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

function sub_1c996135(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'NOT ENOUGH JUICE'
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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

function sub_181c2bd5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor18[address(arg1)].field_0:
        mem[128] = stor18[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor18[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor18[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor18[address(arg1)].field_0, data=mem[128 len 32 * stor18[address(arg1)].field_0])
    mem[(32 * stor18[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor18[address(arg1)].field_0) + 160] = stor18[address(arg1)].field_0
    mem[(32 * stor18[address(arg1)].field_0) + 192 len 32 * stor18[address(arg1)].field_0] = mem[128 len 32 * stor18[address(arg1)].field_0]
    return memory
      from (32 * stor18[address(arg1)].field_0) + 128
       len (96 * stor18[address(arg1)].field_0) + 64
}

function sub_7054a60a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor21[address(arg1)].field_0:
        mem[128] = stor21[address(arg1)].field_0
        if (32 * stor21[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor21[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor21[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor21[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor21[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor21[address(arg1)].field_0) + 160] = stor21[address(arg1)].field_0
    mem[(32 * stor21[address(arg1)].field_0) + 192 len 32 * stor21[address(arg1)].field_0] = mem[128 len 32 * stor21[address(arg1)].field_0]
    return memory
      from (32 * stor21[address(arg1)].field_0) + 128
       len (96 * stor21[address(arg1)].field_0) + 64
}

function sub_a242313e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor15[address(arg1)].field_0:
        mem[128] = stor15[address(arg1)].field_0
        if (32 * stor15[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor15[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor15[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor15[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor15[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor15[address(arg1)].field_0) + 160] = stor15[address(arg1)].field_0
    mem[(32 * stor15[address(arg1)].field_0) + 192 len 32 * stor15[address(arg1)].field_0] = mem[128 len 32 * stor15[address(arg1)].field_0]
    return memory
      from (32 * stor15[address(arg1)].field_0) + 128
       len (96 * stor15[address(arg1)].field_0) + 64
}

function airdrop(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if minted > sub_07c6f852:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max number of mints been reached.'
    if totalSupply >= maxSupply:
        revert with 0, 'No more $juice available.'
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if minted > !(10^18 * arg2):
        revert with 0, 17
    minted += 10^18 * arg2
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(10^18 * arg2):
        revert with 0, 17
    totalSupply += 10^18 * arg2
    if balanceOf[address(arg1)] > !(10^18 * arg2):
        revert with 0, 17
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), 0, arg1);
}

function sub_212a3b3c(?) {
    require calldata.size - 4 >= 32
    if address(sub_41183577[arg1]) != msg.sender:
        revert with 0, 'NOT_STAKED_BY_YOU'
    if block.timestamp < stor19[arg1]:
        revert with 0, 17
    if block.timestamp - stor19[arg1] and 11574074074074 > -1 / block.timestamp - stor19[arg1]:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !((11574074074074 * block.timestamp) - (11574074074074 * stor19[arg1])):
        revert with 0, 17
    totalSupply = totalSupply + (11574074074074 * block.timestamp) - (11574074074074 * stor19[arg1])
    if balanceOf[address(msg.sender)] > !((11574074074074 * block.timestamp) - (11574074074074 * stor19[arg1])):
        revert with 0, 17
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11574074074074 * block.timestamp) - (11574074074074 * stor19[arg1])
    emit Transfer(((11574074074074 * block.timestamp) - (11574074074074 * stor19[arg1])), 0, msg.sender);
    stor19[arg1] = block.timestamp
}

function sub_a3938804(?) {
    require calldata.size - 4 >= 32
    if address(sub_f0a11bc6[arg1]) != msg.sender:
        revert with 0, 'NOT_STAKED_BY_YOU'
    if block.timestamp < stor13[arg1]:
        revert with 0, 17
    if block.timestamp - stor13[arg1] and 34722222222222 > -1 / block.timestamp - stor13[arg1]:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !((34722222222222 * block.timestamp) - (34722222222222 * stor13[arg1])):
        revert with 0, 17
    totalSupply = totalSupply + (34722222222222 * block.timestamp) - (34722222222222 * stor13[arg1])
    if balanceOf[address(msg.sender)] > !((34722222222222 * block.timestamp) - (34722222222222 * stor13[arg1])):
        revert with 0, 17
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (34722222222222 * block.timestamp) - (34722222222222 * stor13[arg1])
    emit Transfer(((34722222222222 * block.timestamp) - (34722222222222 * stor13[arg1])), 0, msg.sender);
    stor13[arg1] = block.timestamp
}

function sub_bcd30a4b(?) {
    require calldata.size - 4 >= 32
    if address(sub_8a04b4c1[arg1]) != msg.sender:
        revert with 0, 'NOT_STAKED_BY_YOU'
    if block.timestamp < stor16[arg1]:
        revert with 0, 17
    if block.timestamp - stor16[arg1] and 23148148148148 > -1 / block.timestamp - stor16[arg1]:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !((23148148148148 * block.timestamp) - (23148148148148 * stor16[arg1])):
        revert with 0, 17
    totalSupply = totalSupply + (23148148148148 * block.timestamp) - (23148148148148 * stor16[arg1])
    if balanceOf[address(msg.sender)] > !((23148148148148 * block.timestamp) - (23148148148148 * stor16[arg1])):
        revert with 0, 17
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (23148148148148 * block.timestamp) - (23148148148148 * stor16[arg1])
    emit Transfer(((23148148148148 * block.timestamp) - (23148148148148 * stor16[arg1])), 0, msg.sender);
    stor16[arg1] = block.timestamp
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if minted > sub_07c6f852:
        revert with 0, 'Max number mints been reached.'
    if totalSupply >= maxSupply:
        revert with 0, 'No more $juice available.'
    if uint8(stor12.field_168):
        revert with 0, 'minting is paused'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if minted > !(10^18 * arg1):
        revert with 0, 17
    minted += 10^18 * arg1
    if owner != msg.sender:
        if _price and arg1 > -1 / _price:
            revert with 0, 17
        if msg.value < _price * arg1:
            revert with 0, 'insufficient funds'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(10^18 * arg1):
        revert with 0, 17
    totalSupply += 10^18 * arg1
    if balanceOf[address(msg.sender)] > !(10^18 * arg1):
        revert with 0, 17
    balanceOf[address(msg.sender)] += 10^18 * arg1
    emit Transfer((10^18 * arg1), 0, msg.sender);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_0edd6890(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not uint8(stor12.field_160):
        revert with 0, 'STAKING_NOT_LIVE'
    mem[0] = msg.sender
    mem[32] = 15
    if stor15[address(msg.sender)].field_0 > !stor18[address(msg.sender)].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 > !stor21[address(msg.sender)].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 + stor21[address(msg.sender)].field_0 > !('cd', 4).length:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 + stor21[address(msg.sender)].field_0 + ('cd', 4).length > 30:
        revert with 0, 'MAX_TOKENS_STAKED_PER_WALLET'
    if totalSupply >= maxSupply:
        revert with 0, 'Staking is not available anymore.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _60 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor24)
        staticcall stor24.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _60
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_63] == mem[_63 + 12 len 20]
        if mem[_63 + 12 len 20] != msg.sender:
            revert with 0, 'TOKEN_IS_NOT_YOURS'
        if address(sub_41183577[_60]):
            revert with 0, 'TOKEN_IS_NOT_YOURS'
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _60
        require ext_code.size(stor24)
        call stor24.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor21[msg.sender].field_0++
        stor21[msg.sender][stor21[msg.sender].field_0].field_0 = _60
        mem[0] = _60
        stor19[_60] = block.timestamp
        mem[32] = 20
        uint256(sub_41183577[_60]) = msg.sender or Mask(96, 160, uint256(sub_41183577[_60]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4344c498(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not uint8(stor12.field_160):
        revert with 0, 'STAKING_NOT_LIVE'
    mem[0] = msg.sender
    mem[32] = 15
    if stor15[address(msg.sender)].field_0 > !stor18[address(msg.sender)].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 > !stor21[address(msg.sender)].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 + stor21[address(msg.sender)].field_0 > !('cd', 4).length:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 + stor21[address(msg.sender)].field_0 + ('cd', 4).length > 30:
        revert with 0, 'MAX_TOKENS_STAKED_PER_WALLET'
    if totalSupply >= maxSupply:
        revert with 0, 'Staking is not available anymore.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _60 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor23)
        staticcall stor23.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _60
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_63] == mem[_63 + 12 len 20]
        if mem[_63 + 12 len 20] != msg.sender:
            revert with 0, 'TOKEN_IS_NOT_YOURS'
        if address(sub_8a04b4c1[_60]):
            revert with 0, 'TOKEN_IS_NOT_YOURS'
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _60
        require ext_code.size(stor23)
        call stor23.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor18[msg.sender].field_0++
        stor18[msg.sender][stor18[msg.sender].field_0].field_0 = _60
        mem[0] = _60
        stor16[_60] = block.timestamp
        mem[32] = 17
        uint256(sub_8a04b4c1[_60]) = msg.sender or Mask(96, 160, uint256(sub_8a04b4c1[_60]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c9ca4a90(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not uint8(stor12.field_160):
        revert with 0, 'STAKING_NOT_LIVE'
    mem[0] = msg.sender
    mem[32] = 15
    if stor15[address(msg.sender)].field_0 > !stor18[address(msg.sender)].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 > !stor21[address(msg.sender)].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 + stor21[address(msg.sender)].field_0 > !('cd', 4).length:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 + stor21[address(msg.sender)].field_0 + ('cd', 4).length > 30:
        revert with 0, 'MAX_TOKENS_STAKED_PER_WALLET'
    if totalSupply >= maxSupply:
        revert with 0, 'Staking is not available anymore.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _60 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor22)
        staticcall stor22.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _60
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_63] == mem[_63 + 12 len 20]
        if mem[_63 + 12 len 20] != msg.sender:
            revert with 0, 'TOKEN_IS_NOT_YOURS'
        if address(sub_f0a11bc6[_60]):
            revert with 0, 'TOKEN_IS_NOT_YOURS'
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _60
        require ext_code.size(stor22)
        call stor22.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor15[msg.sender].field_0++
        stor15[msg.sender][stor15[msg.sender].field_0].field_0 = _60
        mem[0] = _60
        stor13[_60] = block.timestamp
        mem[32] = 14
        uint256(sub_f0a11bc6[_60]) = msg.sender or Mask(96, 160, uint256(sub_f0a11bc6[_60]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_10c2466c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _50 = mem[(32 * idx) + 128]
        if address(sub_41183577[mem[(32 * idx) + 128]]) != msg.sender:
            revert with 0, 'NOT_ORIGINAL_Staker'
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
        mem[ceil32(32 * ('cd', 4).length) + 165] = _50
        require ext_code.size(stor24)
        call stor24.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _50
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < stor19[_50]:
            revert with 0, 17
        if block.timestamp - stor19[_50] and 11574074074074 > -1 / block.timestamp - stor19[_50]:
            revert with 0, 17
        if s > !((11574074074074 * block.timestamp) - (11574074074074 * stor19[_50])):
            revert with 0, 17
        t = 0
        while t < stor21[msg.sender].field_0:
            mem[0] = sha3(msg.sender, 21)
            if stor21[msg.sender][t].field_0 != _50:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if not stor21[msg.sender].field_0:
                revert with 0, 17
            if t < stor21[msg.sender].field_0 - 1:
                if stor21[msg.sender].field_0 - 1 >= stor21[msg.sender].field_0:
                    revert with 0, 50
                if t >= stor21[msg.sender].field_0:
                    revert with 0, 50
                stor21[msg.sender][t].field_0 = stor21[msg.sender][stor21[msg.sender].field_0].field_0
            if not stor21[msg.sender].field_0:
                revert with 0, 49
            stor21[msg.sender][stor21[msg.sender].field_0].field_0 = 0
            stor21[msg.sender].field_0--
            mem[0] = _50
            mem[32] = 20
            address(sub_41183577[_50]) = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (11574074074074 * block.timestamp) - (11574074074074 * stor19[_50])
            continue 
        mem[0] = _50
        mem[32] = 20
        address(sub_41183577[_50]) = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (11574074074074 * block.timestamp) - (11574074074074 * stor19[_50])
        continue 
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !s:
        revert with 0, 17
    totalSupply += s
    if balanceOf[address(msg.sender)] > !s:
        revert with 0, 17
    balanceOf[address(msg.sender)] += s
    emit Transfer(s, 0, msg.sender);
}

function sub_4f95c72b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _50 = mem[(32 * idx) + 128]
        if address(sub_f0a11bc6[mem[(32 * idx) + 128]]) != msg.sender:
            revert with 0, 'NOT_ORIGINAL_Staker'
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
        mem[ceil32(32 * ('cd', 4).length) + 165] = _50
        require ext_code.size(stor22)
        call stor22.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _50
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < stor13[_50]:
            revert with 0, 17
        if block.timestamp - stor13[_50] and 34722222222222 > -1 / block.timestamp - stor13[_50]:
            revert with 0, 17
        if s > !((34722222222222 * block.timestamp) - (34722222222222 * stor13[_50])):
            revert with 0, 17
        t = 0
        while t < stor15[msg.sender].field_0:
            mem[0] = sha3(msg.sender, 15)
            if stor15[msg.sender][t].field_0 != _50:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if not stor15[msg.sender].field_0:
                revert with 0, 17
            if t < stor15[msg.sender].field_0 - 1:
                if stor15[msg.sender].field_0 - 1 >= stor15[msg.sender].field_0:
                    revert with 0, 50
                if t >= stor15[msg.sender].field_0:
                    revert with 0, 50
                stor15[msg.sender][t].field_0 = stor15[msg.sender][stor15[msg.sender].field_0].field_0
            if not stor15[msg.sender].field_0:
                revert with 0, 49
            stor15[msg.sender][stor15[msg.sender].field_0].field_0 = 0
            stor15[msg.sender].field_0--
            mem[0] = _50
            mem[32] = 14
            address(sub_f0a11bc6[_50]) = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (34722222222222 * block.timestamp) - (34722222222222 * stor13[_50])
            continue 
        mem[0] = _50
        mem[32] = 14
        address(sub_f0a11bc6[_50]) = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (34722222222222 * block.timestamp) - (34722222222222 * stor13[_50])
        continue 
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !s:
        revert with 0, 17
    totalSupply += s
    if balanceOf[address(msg.sender)] > !s:
        revert with 0, 17
    balanceOf[address(msg.sender)] += s
    emit Transfer(s, 0, msg.sender);
}

function sub_f0e43472(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _50 = mem[(32 * idx) + 128]
        if address(sub_8a04b4c1[mem[(32 * idx) + 128]]) != msg.sender:
            revert with 0, 'NOT_ORIGINAL_Staker'
        mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
        mem[ceil32(32 * ('cd', 4).length) + 165] = _50
        require ext_code.size(stor23)
        call stor23.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _50
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < stor16[_50]:
            revert with 0, 17
        if block.timestamp - stor16[_50] and 23148148148148 > -1 / block.timestamp - stor16[_50]:
            revert with 0, 17
        if s > !((23148148148148 * block.timestamp) - (23148148148148 * stor16[_50])):
            revert with 0, 17
        t = 0
        while t < stor18[msg.sender].field_0:
            mem[0] = sha3(msg.sender, 18)
            if stor18[msg.sender][t].field_0 != _50:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if not stor18[msg.sender].field_0:
                revert with 0, 17
            if t < stor18[msg.sender].field_0 - 1:
                if stor18[msg.sender].field_0 - 1 >= stor18[msg.sender].field_0:
                    revert with 0, 50
                if t >= stor18[msg.sender].field_0:
                    revert with 0, 50
                stor18[msg.sender][t].field_0 = stor18[msg.sender][stor18[msg.sender].field_0].field_0
            if not stor18[msg.sender].field_0:
                revert with 0, 49
            stor18[msg.sender][stor18[msg.sender].field_0].field_0 = 0
            stor18[msg.sender].field_0--
            mem[0] = _50
            mem[32] = 17
            address(sub_8a04b4c1[_50]) = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (23148148148148 * block.timestamp) - (23148148148148 * stor16[_50])
            continue 
        mem[0] = _50
        mem[32] = 17
        address(sub_8a04b4c1[_50]) = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (23148148148148 * block.timestamp) - (23148148148148 * stor16[_50])
        continue 
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !s:
        revert with 0, 17
    totalSupply += s
    if balanceOf[address(msg.sender)] > !s:
        revert with 0, 17
    balanceOf[address(msg.sender)] += s
    emit Transfer(s, 0, msg.sender);
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[ceil32(stor3.length.field_1 % 128) + stor3.length.field_1 % 128 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[ceil32(stor4.length.field_1 % 128) + stor4.length.field_1 % 128 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}

function unstakeAll() {
    if stor15[address(msg.sender)].field_0 > !stor18[address(msg.sender)].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 > !stor21[address(msg.sender)].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 + stor18[address(msg.sender)].field_0 + stor21[address(msg.sender)].field_0 <= 0:
        revert with 0, 'MUST_ATLEAST_BE_STAKED_ONCE'
    mem[0] = msg.sender
    mem[32] = 15
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while idx:
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= stor15[msg.sender].field_0:
            revert with 0, 50
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor15[msg.sender][idx].field_0
        require ext_code.size(stor22)
        call stor22.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor15[msg.sender][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < stor13[stor15[msg.sender][idx].field_0]:
            revert with 0, 17
        if block.timestamp - stor13[stor15[msg.sender][idx].field_0] and 34722222222222 > -1 / block.timestamp - stor13[stor15[msg.sender][idx].field_0]:
            revert with 0, 17
        if s > !((34722222222222 * block.timestamp) - (34722222222222 * stor13[stor15[msg.sender][idx].field_0])):
            revert with 0, 17
        if not stor15[msg.sender].field_0:
            revert with 0, 49
        stor15[msg.sender][stor15[msg.sender].field_0].field_0 = 0
        stor15[msg.sender].field_0--
        mem[0] = stor15[msg.sender][idx].field_0
        mem[32] = 14
        address(sub_f0a11bc6[stor15[msg.sender][idx].field_0]) = 0
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = s + (34722222222222 * block.timestamp) - (34722222222222 * stor13[stor15[msg.sender][idx].field_0])
        continue 
    mem[0] = msg.sender
    mem[32] = 18
    idx = stor[sha3(mem[0 len 64])]
    t = s
    while idx:
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= stor18[msg.sender].field_0:
            revert with 0, 50
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor18[msg.sender][idx].field_0
        require ext_code.size(stor23)
        call stor23.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor18[msg.sender][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < stor16[stor18[msg.sender][idx].field_0]:
            revert with 0, 17
        if block.timestamp - stor16[stor18[msg.sender][idx].field_0] and 23148148148148 > -1 / block.timestamp - stor16[stor18[msg.sender][idx].field_0]:
            revert with 0, 17
        if t > !((23148148148148 * block.timestamp) - (23148148148148 * stor16[stor18[msg.sender][idx].field_0])):
            revert with 0, 17
        if not stor18[msg.sender].field_0:
            revert with 0, 49
        stor18[msg.sender][stor18[msg.sender].field_0].field_0 = 0
        stor18[msg.sender].field_0--
        mem[0] = stor18[msg.sender][idx].field_0
        mem[32] = 17
        address(sub_8a04b4c1[stor18[msg.sender][idx].field_0]) = 0
        if not idx:
            revert with 0, 17
        idx = idx - 1
        t = t + (23148148148148 * block.timestamp) - (23148148148148 * stor16[stor18[msg.sender][idx].field_0])
        continue 
    mem[0] = msg.sender
    mem[32] = 21
    idx = stor[sha3(mem[0 len 64])]
    s = t
    while idx:
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= stor21[msg.sender].field_0:
            revert with 0, 50
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor21[msg.sender][idx].field_0
        require ext_code.size(stor24)
        call stor24.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor21[msg.sender][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < stor19[stor21[msg.sender][idx].field_0]:
            revert with 0, 17
        if block.timestamp - stor19[stor21[msg.sender][idx].field_0] and 11574074074074 > -1 / block.timestamp - stor19[stor21[msg.sender][idx].field_0]:
            revert with 0, 17
        if s > !((11574074074074 * block.timestamp) - (11574074074074 * stor19[stor21[msg.sender][idx].field_0])):
            revert with 0, 17
        if not stor21[msg.sender].field_0:
            revert with 0, 49
        stor21[msg.sender][stor21[msg.sender].field_0].field_0 = 0
        stor21[msg.sender].field_0--
        mem[0] = stor21[msg.sender][idx].field_0
        mem[32] = 20
        address(sub_41183577[stor21[msg.sender][idx].field_0]) = 0
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = s + (11574074074074 * block.timestamp) - (11574074074074 * stor19[stor21[msg.sender][idx].field_0])
        continue 
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !s:
        revert with 0, 17
    totalSupply += s
    if balanceOf[address(msg.sender)] > !s:
        revert with 0, 17
    balanceOf[address(msg.sender)] += s
    emit Transfer(s, 0, msg.sender);
}



}
