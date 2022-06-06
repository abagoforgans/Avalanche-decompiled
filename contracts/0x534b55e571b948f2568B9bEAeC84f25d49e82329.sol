contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - claim()
#  - deposit(uint256 arg1)
#
const sub_0f4e6d33(?) = 1000 * 10^18

const sub_259e0c4a(?) = 10

const sub_82ae470b(?) = 2000 * 10^18

const sub_89cb6c47(?) = 7

const sub_8a5cc320(?) = (24 * 3600)

const sub_a4fa9c90(?) = 5

const sub_baf4080f(?) = 1200 * 10^18

const sub_cd7629f8(?) = 10^18

const sub_d4daf741(?) = 1400 * 10^18

const sub_fea1bf39(?) = 12


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
        revert with 0, 33
    return investors[arg1].field_0, investors[arg1].field_256, investors[arg1].field_512, investors[arg1].field_768
}

function owner() payable {
    return owner
}

function cancelled() payable {
    return bool(stor7)
}

function mim() payable {
    return mimAddress
}

function sub_a0709791(?) payable {
    return sub_a0709791
}

function isPresaleOpen() payable {
    return bool(uint8(stor2.field_0))
}

function _fallback() payable {
    revert
}

function getPercentReleased() payable {
    if block.timestamp < closingTime:
        return 0
    return 100
}

function cancel() payable {
    require msg.sender == address(walletAddress)
    stor7 = 1
    closingTime = 99999999999
}

function setClosingTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_07867355(?) payable {
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
        revert with 0, 33
    if 3 == investors[address(arg1)].field_0:
        return 5, 1000 * 10^18
    if investors[address(arg1)].field_0 > 3:
        revert with 0, 33
    if 2 == investors[address(arg1)].field_0:
        return 7, 1400 * 10^18
    if investors[address(arg1)].field_0 > 3:
        revert with 0, 33
    if investors[address(arg1)].field_0 != 1:
        return 12, 1200 * 10^18
    return 10, 2000 * 10^18
}

function getClaimableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < closingTime:
        if investors[address(arg1)].field_768 and 0 > -1 / investors[address(arg1)].field_768:
            revert with 0, 17
        if 0 < investors[address(arg1)].field_512:
            revert with 0, 17
        return -investors[address(arg1)].field_512
    if investors[address(arg1)].field_768 and 100 > -1 / investors[address(arg1)].field_768:
        revert with 0, 17
    if 100 * investors[address(arg1)].field_768 / 100 < investors[address(arg1)].field_512:
        revert with 0, 17
    return ((100 * investors[address(arg1)].field_768 / 100) - investors[address(arg1)].field_512)
}

function sub_4eb9e26e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] < 4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if cd[36] > 3:
            revert with 0, 33
        investors[mem[(32 * idx) + 140 len 20]].field_0 = cd[36] or Mask(248, 8, investors[mem[(32 * idx) + 140 len 20]].field_0)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    mem[ceil32(return_data.size) + 132] = address(walletAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(mimAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call mimAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_ffde60eb(?) payable {
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
    if ext_call.return_data[0] <= sub_a0709791:
        revert with 0, 'not enough TEST tokens remaining'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(pTokenAddress)
    staticcall pTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_a0709791:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(walletAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - sub_a0709791
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(pTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - sub_a0709791, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call pTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - sub_a0709791, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - sub_a0709791, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_cfa11a94(?) payable {
    require calldata.size - 4 >= 32
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
                revert with 0, 17
            return (arg1 / 5)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if arg1 / 10^ext_call.return_data[31 len 1] and 1 > -1 / arg1 / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            return (arg1 / 10^ext_call.return_data[31 len 1] / 5)
        if var36005 > 1:
            s = var36001
            t = var36002
            u = var36005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    if arg1 / s * s * t and 1 > -1 / arg1 / s * s * t:
                        revert with 0, 17
                    return (arg1 / s * s * t / 5)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                if arg1 / s * s * s * t and 1 > -1 / arg1 / s * s * s * t:
                    revert with 0, 17
                return (arg1 / s * s * s * t / 5)
            revert with 0, 17
        if var36002 > -1 / var36001:
            revert with 0, 17
        if not var36001 * var36002:
            revert with 0, 18
        if arg1 / var36001 * var36002 and 1 > -1 / arg1 / var36001 * var36002:
            revert with 0, 17
        return (arg1 / var36001 * var36002 / 5)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        require ext_code.size(mimAddress)
        staticcall mimAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg1 and 10^uint8(ext_call.return_data[0]) > -1 / arg1:
                revert with 0, 17
            return (arg1 * 10^uint8(ext_call.return_data[0]) / 5)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if arg1 / 10^ext_call.return_data[31 len 1] and 10^uint8(ext_call.return_data[0]) > -1 / arg1 / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            return (arg1 / 10^ext_call.return_data[31 len 1] * 10^uint8(ext_call.return_data[0]) / 5)
        if var42005 > 1:
            s = var42001
            t = var42002
            u = var42005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    if arg1 / s * s * t and 10^uint8(ext_call.return_data[0]) > -1 / arg1 / s * s * t:
                        revert with 0, 17
                    return (arg1 / s * s * t * 10^uint8(ext_call.return_data[0]) / 5)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                if arg1 / s * s * s * t and 10^uint8(ext_call.return_data[0]) > -1 / arg1 / s * s * s * t:
                    revert with 0, 17
                return (arg1 / s * s * s * t * 10^uint8(ext_call.return_data[0]) / 5)
            revert with 0, 17
        if var42002 > -1 / var42001:
            revert with 0, 17
        if not var42001 * var42002:
            revert with 0, 18
        if arg1 / var42001 * var42002 and 10^uint8(ext_call.return_data[0]) > -1 / arg1 / var42001 * var42002:
            revert with 0, 17
        return (arg1 / var42001 * var42002 * 10^uint8(ext_call.return_data[0]) / 5)
    if var25005 > 1:
        s = var25001
        t = var25002
        u = var25005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                require ext_code.size(mimAddress)
                staticcall mimAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and s * s * t > -1 / arg1:
                        revert with 0, 17
                    return (arg1 * s * s * t / 5)
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if arg1 / 10^ext_call.return_data[31 len 1] and s * s * t > -1 / arg1 / 10^ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    return (arg1 / 10^ext_call.return_data[31 len 1] * s * s * t / 5)
                if var52005 > 1:
                    u = var52001
                    v = var52002
                    w = var52005
                    while u <= -1 / u:
                        if not bool(w):
                            if uint255(w) * 0.5 > 1:
                                u = u * u
                                v = v
                                w = uint255(w) * 0.5
                                continue 
                            if v > -1 / u * u:
                                revert with 0, 17
                            if not u * u * v:
                                revert with 0, 18
                            if arg1 / u * u * v and s * s * t > -1 / arg1 / u * u * v:
                                revert with 0, 17
                            return (arg1 / u * u * v * s * s * t / 5)
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = u * v
                            w = uint255(w) * 0.5
                            continue 
                        if u * v > -1 / u * u:
                            revert with 0, 17
                        if not u * u * u * v:
                            revert with 0, 18
                        if arg1 / u * u * u * v and s * s * t > -1 / arg1 / u * u * u * v:
                            revert with 0, 17
                        return (arg1 / u * u * u * v * s * s * t / 5)
                    revert with 0, 17
                if var52002 > -1 / var52001:
                    revert with 0, 17
                if not var52001 * var52002:
                    revert with 0, 18
                if arg1 / var52001 * var52002 and s * s * t > -1 / arg1 / var52001 * var52002:
                    revert with 0, 17
                return (arg1 / var52001 * var52002 * s * s * t / 5)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            require ext_code.size(mimAddress)
            staticcall mimAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg1 and s * s * s * t > -1 / arg1:
                    revert with 0, 17
                return (arg1 * s * s * s * t / 5)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if arg1 / 10^ext_call.return_data[31 len 1] and s * s * s * t > -1 / arg1 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                return (arg1 / 10^ext_call.return_data[31 len 1] * s * s * s * t / 5)
            if var53005 > 1:
                u = var53001
                v = var53002
                w = var53005
                while u <= -1 / u:
                    if not bool(w):
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = v
                            w = uint255(w) * 0.5
                            continue 
                        if v > -1 / u * u:
                            revert with 0, 17
                        if not u * u * v:
                            revert with 0, 18
                        if arg1 / u * u * v and s * s * s * t > -1 / arg1 / u * u * v:
                            revert with 0, 17
                        return (arg1 / u * u * v * s * s * s * t / 5)
                    if uint255(w) * 0.5 > 1:
                        u = u * u
                        v = u * v
                        w = uint255(w) * 0.5
                        continue 
                    if u * v > -1 / u * u:
                        revert with 0, 17
                    if not u * u * u * v:
                        revert with 0, 18
                    if arg1 / u * u * u * v and s * s * s * t > -1 / arg1 / u * u * u * v:
                        revert with 0, 17
                    return (arg1 / u * u * u * v * s * s * s * t / 5)
                revert with 0, 17
            if var53002 > -1 / var53001:
                revert with 0, 17
            if not var53001 * var53002:
                revert with 0, 18
            if arg1 / var53001 * var53002 and s * s * s * t > -1 / arg1 / var53001 * var53002:
                revert with 0, 17
            return (arg1 / var53001 * var53002 * s * s * s * t / 5)
        revert with 0, 17
    if var25002 > -1 / var25001:
        revert with 0, 17
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and var25001 * var25002 > -1 / arg1:
            revert with 0, 17
        return (arg1 * var25001 * var25002 / 5)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if arg1 / 10^ext_call.return_data[31 len 1] and var25001 * var25002 > -1 / arg1 / 10^ext_call.return_data[31 len 1]:
            revert with 0, 17
        return (arg1 / 10^ext_call.return_data[31 len 1] * var25001 * var25002 / 5)
    if var47005 > 1:
        s = var47001
        t = var47002
        u = var47005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if not s * s * t:
                    revert with 0, 18
                if arg1 / s * s * t and var25001 * var25002 > -1 / arg1 / s * s * t:
                    revert with 0, 17
                return (arg1 / s * s * t * var25001 * var25002 / 5)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if not s * s * s * t:
                revert with 0, 18
            if arg1 / s * s * s * t and var25001 * var25002 > -1 / arg1 / s * s * s * t:
                revert with 0, 17
            return (arg1 / s * s * s * t * var25001 * var25002 / 5)
        revert with 0, 17
    if var47002 > -1 / var47001:
        revert with 0, 17
    if not var47001 * var47002:
        revert with 0, 18
    if arg1 / var47001 * var47002 and var25001 * var25002 > -1 / arg1 / var47001 * var47002:
        revert with 0, 17
    return (arg1 / var47001 * var47002 * var25001 * var25002 / 5)
}



}
