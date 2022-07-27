contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
address usdcAddress; offset 24
address walletAddress;
uint256 sub_19e8fd2a;
uint256 sub_7b63ea8a;
uint256 sub_aa015368;
uint256 sub_3c4058cf;
uint256 sub_e0f53974;
uint256 unlockTime;
uint256 sub_0375e892;
address govAddress;
mapping of uint256 sub_46e8506e;
mapping of uint256 sub_63ad23c3;
mapping of uint256 sub_480ac6d5;
mapping of uint8 stor15;

function sub_0375e892(?) payable {
    return sub_0375e892
}

function gov() payable {
    return govAddress
}

function sub_19e8fd2a(?) payable {
    return sub_19e8fd2a
}

function sub_1e17ba39(?) payable {
    return bool(uint8(stor2.field_16))
}

function unlockTime() payable {
    return unlockTime
}

function isInitialized() payable {
    return bool(uint8(stor2.field_0))
}

function sub_3c4058cf(?) payable {
    return sub_3c4058cf
}

function usdc() payable {
    return usdcAddress
}

function sub_46e8506e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_46e8506e[arg1]
}

function sub_480ac6d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_480ac6d5[arg1]
}

function wallet() payable {
    return walletAddress
}

function isPresaleActive() payable {
    return bool(uint8(stor2.field_8))
}

function sub_63ad23c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_63ad23c3[arg1]
}

function sub_7b63ea8a(?) payable {
    return sub_7b63ea8a
}

function owner() payable {
    return owner
}

function sub_aa015368(?) payable {
    return sub_aa015368
}

function sub_e0f53974(?) payable {
    return sub_e0f53974
}

function presaleWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function endPresale() payable {
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor2.field_8) = 0
    stor1 = 1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    govAddress = arg1
    stor1 = 1
}

function setWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    walletAddress = arg1
    stor1 = 1
}

function extendUnlockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 <= unlockTime:
        revert with 0, 'Presale: invalid _unlockTime'
    unlockTime = arg1
    stor1 = 1
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

function updateWhitelist(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor15[address(arg1)]:
        revert with 0, 'Presale: invalid prevAccount'
    stor15[address(arg1)] = 0
    stor15[arg2] = 1
    stor1 = 1
}

function transferLiquidity() payable {
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp <= unlockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: unlockTime not yet passed'
    require ext_code.size(usdcAddress)
    call usdcAddress.0xa9059cbb with:
         gas gas_remaining wei
        args walletAddress, sub_0375e892
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}

function withdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp <= unlockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: unlockTime not yet passed'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}

function addWhitelists(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        stor15[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function sub_281bd798(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        stor15[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function sub_1eb4e9d7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        sub_63ad23c3[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function sub_b7bb78a4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        sub_63ad23c3[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function initialize(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    s = ceil32(32 * arg1.length) + 129
    idx = arg2 + 36
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if govAddress != msg.sender:
        revert with 0, 'Presale: forbidden'
    if uint8(stor2.field_0):
        revert with 0, 'Presale: already initialized'
    uint8(stor2.field_0) = 1
    if not arg1.length:
        revert with 0, 50
    usdcAddress = mem[140 len 20]
    if 1 >= arg1.length:
        revert with 0, 50
    walletAddress = mem[172 len 20]
    if 0 >= arg2.length:
        revert with 0, 50
    sub_19e8fd2a = mem[ceil32(32 * arg1.length) + 129]
    if 1 >= arg2.length:
        revert with 0, 50
    sub_7b63ea8a = mem[ceil32(32 * arg1.length) + 161]
    if 2 >= arg2.length:
        revert with 0, 50
    sub_aa015368 = mem[ceil32(32 * arg1.length) + 193]
    if 3 >= arg2.length:
        revert with 0, 50
    sub_3c4058cf = mem[ceil32(32 * arg1.length) + 225]
    if 4 >= arg2.length:
        revert with 0, 50
    unlockTime = mem[ceil32(32 * arg1.length) + 257]
}

function presale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor15[msg.sender]:
        revert with 0, 'Presale: forbidden'
    if not uint8(stor2.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: presale is no longer active'
    if arg1 <= 0:
        revert with 0, 'Presale: invalid _usdcAmount'
    if sub_0375e892 > !arg1:
        revert with 0, 17
    sub_0375e892 += arg1
    if sub_3c4058cf < sub_0375e892 + arg1:
        revert with 0, 'Presale: usdcHardCap exceeded'
    if sub_46e8506e[address(msg.sender)] > !arg1:
        revert with 0, 17
    sub_46e8506e[address(msg.sender)] += arg1
    if sub_63ad23c3[address(msg.sender)] and sub_aa015368 > -1 / sub_63ad23c3[address(msg.sender)]:
        revert with 0, 17
    if sub_63ad23c3[address(msg.sender)] * sub_aa015368 < sub_46e8506e[address(msg.sender)]:
        revert with 0, 'Presale: usdcSlotCap exceeded'
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(usdcAddress)
    call usdcAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if arg1 != 0:
        revert with 0, 'Presale: invalid transfer'
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    if not sub_19e8fd2a:
        revert with 0, 18
    if sub_480ac6d5[address(msg.sender)] > !(10^18 * arg1 / sub_19e8fd2a):
        revert with 0, 17
    sub_480ac6d5[address(msg.sender)] += 10^18 * arg1 / sub_19e8fd2a
    stor1 = 1
}



}
