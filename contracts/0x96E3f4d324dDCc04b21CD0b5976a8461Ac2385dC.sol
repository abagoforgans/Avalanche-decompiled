contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - claim()
#  - deposit(uint256 arg1)
#
const sub_06532fe2(?) = 10

const sub_0f4e6d33(?) = 1000 * 10^18

const sub_230b94c0(?) = 12

const sub_53438f3f(?) = 5

const sub_82ae470b(?) = 2000 * 10^18

const sub_8a5cc320(?) = (24 * 3600)

const sub_baf4080f(?) = 1200 * 10^18

const sub_cd7629f8(?) = 10^18

const sub_d4daf741(?) = 1400 * 10^18

const sub_f1d16926(?) = 7


address owner;
uint256 closingTime;
uint8 stor2;
uint8 stor2; offset 8
address pTokenAddress; offset 16
uint256 stor2; offset 8
uint32 stor3;
address walletAddress;
uint256 stor3;
address mimAddress;
uint256 sub_42955c1d;
uint256 sub_a0709791;
uint8 stor7;
uint8 stor7; offset 8
uint256 stor7; offset 8
mapping of struct investors;

function isPublicSaleOpen() payable {
    return bool(uint8(stor2.field_8))
}

function sub_42955c1d(?) payable {
    return sub_42955c1d
}

function closingTime() payable {
    return closingTime
}

function wallet() payable {
    return address(walletAddress)
}

function pToken() payable {
    return pTokenAddress
}

function investors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if investors[arg1].field_0 >= 4:
        revert with 'NH{q', 33
    return investors[arg1].field_0, investors[arg1].field_256, investors[arg1].field_512, investors[arg1].field_768
}

function owner() payable {
    return owner
}

function cancelled() payable {
    return bool(uint8(stor7.field_8))
}

function mim() payable {
    return mimAddress
}

function sub_a0709791(?) payable {
    return sub_a0709791
}

function sub_b294a177(?) payable {
    return bool(uint8(stor7.field_0))
}

function isPresaleOpen() payable {
    return bool(uint8(stor2.field_0))
}

function _fallback() payable {
    revert
}

function cancel() payable {
    require msg.sender == address(walletAddress)
    Mask(248, 0, stor7.field_8) = 1
    closingTime = 99999999999
}

function sub_9c0a7f11(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor7.field_0) = 0
}

function setClosingTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(walletAddress)
    closingTime = arg1
}

function togglePresale(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor2.field_0) = uint8(arg1)
}

function togglePublicSale(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor2.field_8) = Mask(248, 0, arg1)
}

function sub_99b7212b(?) payable {
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_d9fdded9(?) payable {
    require ext_code.size(pTokenAddress)
    staticcall pTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
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

function getPercentReleased() payable {
    if closingTime > -259201:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (72 * 24 * 3600):
        return 100
    if closingTime > -172801:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (48 * 24 * 3600):
        return 75
    if closingTime > -86401:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (24 * 3600):
        return 50
    if block.timestamp < closingTime:
        return 0
    return 25
}

function sub_536a4f16(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if investors[address(arg1)].field_0 > 3:
        revert with 'NH{q', 33
    if 3 == investors[address(arg1)].field_0:
        return 5, 1000 * 10^18
    if investors[address(arg1)].field_0 > 3:
        revert with 'NH{q', 33
    if 2 == investors[address(arg1)].field_0:
        return 7, 1400 * 10^18
    if investors[address(arg1)].field_0 > 3:
        revert with 'NH{q', 33
    if investors[address(arg1)].field_0 != 1:
        return 12, 1200 * 10^18
    return 10, 2000 * 10^18
}

function sub_4eb9e26e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] < 4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if cd[36] > 3:
            revert with 'NH{q', 33
        investors[mem[(32 * idx) + 140 len 20]].field_0 = cd[36] or Mask(248, 8, investors[mem[(32 * idx) + 140 len 20]].field_0)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getClaimableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if closingTime > -259201:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (72 * 24 * 3600):
        if investors[address(arg1)].field_768 and 100 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 100 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((100 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
    if closingTime > -172801:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (48 * 24 * 3600):
        if investors[address(arg1)].field_768 and 75 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 75 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((75 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
    if closingTime > -86401:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (24 * 3600):
        if investors[address(arg1)].field_768 and 50 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 50 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((50 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
    if block.timestamp < closingTime:
        if investors[address(arg1)].field_768 and 0 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 0 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return -investors[address(arg1)].field_512
    if investors[address(arg1)].field_768 and 25 > -1 / investors[address(arg1)].field_768:
        revert with 'NH{q', 17
    if 25 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
        revert with 'NH{q', 17
    return ((25 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
}

function sub_51164a1a(?) payable {
    require msg.sender == address(walletAddress)
    mem[100] = this.address
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(walletAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(mimAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call mimAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_bc376595(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor7.field_0):
        revert with 0, 'Period to add address over'
    idx = 0
    while ('cd', 4).length > idx:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[100] + 36)] < 4
        if sub_a0709791 > -cd[((32 * idx) + cd[36] + 36)] - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(pTokenAddress)
        staticcall pTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == mem[_20]
        if mem[_20] < sub_a0709791 + cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 'there aren't enough fund to buy more pToken'
        if investors[address(cd[((32 * idx) + cd[4] + 36)])].field_256 > -cd[((32 * idx) + cd[68] + 36)] - 1:
            revert with 'NH{q', 17
        investors[address(cd[((32 * idx) + cd[4] + 36)])].field_256 += cd[((32 * idx) + cd[68] + 36)]
        if investors[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -cd[((32 * idx) + cd[36] + 36)] - 1:
            revert with 'NH{q', 17
        investors[address(cd[((32 * idx) + cd[4] + 36)])].field_768 += cd[((32 * idx) + cd[36] + 36)]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 8
        if cd[((32 * idx) + cd[100] + 36)] > 3:
            revert with 'NH{q', 33
        investors[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = cd[((32 * idx) + cd[100] + 36)] or Mask(248, 8, investors[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
        if sub_42955c1d > -cd[((32 * idx) + cd[68] + 36)] - 1:
            revert with 'NH{q', 17
        sub_42955c1d += cd[((32 * idx) + cd[68] + 36)]
        if sub_a0709791 > -cd[((32 * idx) + cd[36] + 36)] - 1:
            revert with 'NH{q', 17
        sub_a0709791 += cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return ('cd', 4).length
}

function sub_80e98811(?) payable {
    require msg.sender == address(walletAddress)
    mem[100] = this.address
    require ext_code.size(pTokenAddress)
    staticcall pTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= sub_a0709791:
        revert with 0, 'not enough SRA tokens remaining'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(pTokenAddress)
    staticcall pTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_a0709791:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(walletAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - sub_a0709791
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(pTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - sub_a0709791, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call pTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - sub_a0709791, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - sub_a0709791, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_21be2297(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(pTokenAddress)
    staticcall pTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(mimAddress)
        staticcall mimAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg1 and 1 > -1 / arg1:
                revert with 'NH{q', 17
            return (arg1 / 5)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 18
            if arg1 / 10^ext_call.return_data[31 len 1] and 1 > -1 / arg1 / 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            return (arg1 / 10^ext_call.return_data[31 len 1] / 5)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if not t * s:
            revert with 'NH{q', 18
        if arg1 / t * s and 1 > -1 / arg1 / t * s:
            revert with 'NH{q', 17
        return (arg1 / t * s / 5)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        require ext_code.size(mimAddress)
        staticcall mimAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg1 and 10^uint8(ext_call.return_data[0]) > -1 / arg1:
                revert with 'NH{q', 17
            return (arg1 * 10^uint8(ext_call.return_data[0]) / 5)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 18
            if arg1 / 10^ext_call.return_data[31 len 1] and 10^uint8(ext_call.return_data[0]) > -1 / arg1 / 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            return (arg1 / 10^ext_call.return_data[31 len 1] * 10^uint8(ext_call.return_data[0]) / 5)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if not t * s:
            revert with 'NH{q', 18
        if arg1 / t * s and 10^uint8(ext_call.return_data[0]) > -1 / arg1 / t * s:
            revert with 'NH{q', 17
        return (arg1 / t * s * 10^uint8(ext_call.return_data[0]) / 5)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and t * s > -1 / arg1:
            revert with 'NH{q', 17
        return (arg1 * t * s / 5)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 'NH{q', 18
        if arg1 / 10^ext_call.return_data[31 len 1] and t * s > -1 / arg1 / 10^ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        return (arg1 / 10^ext_call.return_data[31 len 1] * t * s / 5)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if not v * u:
        revert with 'NH{q', 18
    if arg1 / v * u and t * s > -1 / arg1 / v * u:
        revert with 'NH{q', 17
    return (arg1 / v * u * t * s / 5)
}



}
