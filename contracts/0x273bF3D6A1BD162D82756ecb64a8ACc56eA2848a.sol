contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - claim()
#  - sub_4eb9e26e(?)
#  - deposit(uint256 arg1)
#
const sub_12788a0e(?) = 10^6

const sub_1ecb1e84(?) = 100 * 10^6

const sub_715d9128(?) = 1500 * 10^6

const sub_8a5cc320(?) = (24 * 3600)

const sub_8b20f665(?) = 10^11

const sub_a19a0234(?) = 2 * 10^9

const sub_baf4080f(?) = 1500 * 10^6


address owner;
uint256 closingTime;
uint8 stor2;
uint8 stor2; offset 8
address pTokenAddress; offset 16
uint256 stor2; offset 8
uint32 stor3;
address walletAddress;
uint256 stor3;
address USDCAddress;
uint256 sub_2402c52f;
uint256 sub_a0709791;
uint256 sub_fd7b9ead;
uint8 stor8;
mapping of struct investors;

function isPublicSaleOpen() payable {
    return bool(uint8(stor2.field_8))
}

function sub_2402c52f(?) payable {
    return sub_2402c52f
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

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function cancelled() payable {
    return bool(stor8)
}

function sub_a0709791(?) payable {
    return sub_a0709791
}

function isPresaleOpen() payable {
    return bool(uint8(stor2.field_0))
}

function sub_fd7b9ead(?) payable {
    return sub_fd7b9ead
}

function _fallback() payable {
    revert
}

function cancel() payable {
    require msg.sender == address(walletAddress)
    stor8 = 1
    closingTime = 99999999999
}

function setClosingTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(walletAddress)
    closingTime = arg1
}

function changePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fd7b9ead = arg1
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
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_b7cfa9e2(?) payable {
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

function sub_536a4f16(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if investors[address(arg1)].field_0 > 3:
        revert with 'NH{q', 33
    if 2 == investors[address(arg1)].field_0:
        return sub_fd7b9ead, 2 * 10^9
    if investors[address(arg1)].field_0 > 3:
        revert with 'NH{q', 33
    if investors[address(arg1)].field_0 != 3:
        return sub_fd7b9ead, 1500 * 10^6
    return sub_fd7b9ead, 10^11
}

function sub_2ff026cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4
    if arg1 > 3:
        revert with 'NH{q', 33
    if arg1 == 2:
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
    if closingTime > -345601:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (96 * 24 * 3600):
        return 100
    if closingTime > -259201:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (72 * 24 * 3600):
        return 80
    if closingTime > -172801:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (48 * 24 * 3600):
        return 60
    if closingTime > -86401:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (24 * 3600):
        return 40
    if block.timestamp < closingTime:
        return 0
    return 20
}

function sub_51164a1a(?) payable {
    require msg.sender == address(walletAddress)
    mem[100] = this.address
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
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
    if ext_code.size(USDCAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call USDCAddress with:
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

function sub_96f19488(?) payable {
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
        revert with 0, 'not enough Ronin tokens remaining'
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

function getClaimableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if investors[address(arg1)].field_0 > 3:
        revert with 'NH{q', 33
    if investors[address(arg1)].field_0 == 2:
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
    if closingTime > -345601:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (96 * 24 * 3600):
        if investors[address(arg1)].field_768 and 100 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 100 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((100 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
    if closingTime > -259201:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (72 * 24 * 3600):
        if investors[address(arg1)].field_768 and 80 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 80 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((80 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
    if closingTime > -172801:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (48 * 24 * 3600):
        if investors[address(arg1)].field_768 and 60 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 60 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((60 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
    if closingTime > -86401:
        revert with 'NH{q', 17
    if block.timestamp >= closingTime + (24 * 3600):
        if investors[address(arg1)].field_768 and 40 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 40 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((40 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
    if block.timestamp < closingTime:
        if investors[address(arg1)].field_768 and 0 > -1 / investors[address(arg1)].field_768:
            revert with 'NH{q', 17
        if 0 < investors[address(arg1)].field_512:
            revert with 'NH{q', 17
        return -investors[address(arg1)].field_512
    if investors[address(arg1)].field_768 and 20 > -1 / investors[address(arg1)].field_768:
        revert with 'NH{q', 17
    if 20 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
        revert with 'NH{q', 17
    return ((20 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
}



}
