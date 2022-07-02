contract main {




// =====================  Runtime code  =====================


const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const DENOMINATOR = 10^6


address owner;
address sub_22d3cc43Address;
address sub_59aa78e3Address;
address treasuryAddress;
mapping of struct assets;
mapping of struct vesting;
uint256 sub_63fd7f49;
uint256 sub_d411401d;
uint256 sub_9235f197;
uint256 sub_67f77e9b;
uint256 sub_33920e29;
uint256 totalVested;
uint256 lastBuyback;
uint256 buybackAmount;

function totalVested() payable {
    return totalVested
}

function sub_22d3cc43(?) payable {
    return sub_22d3cc43Address
}

function sub_33920e29(?) payable {
    return sub_33920e29
}

function lastBuyback() payable {
    return lastBuyback
}

function Treasury() payable {
    return treasuryAddress
}

function sub_59aa78e3(?) payable {
    return sub_59aa78e3Address
}

function sub_63fd7f49(?) payable {
    return sub_63fd7f49
}

function sub_67f77e9b(?) payable {
    return sub_67f77e9b
}

function owner() payable {
    return owner
}

function sub_9235f197(?) payable {
    return sub_9235f197
}

function sub_d411401d(?) payable {
    return sub_d411401d
}

function buybackAmount() payable {
    return buybackAmount
}

function vesting(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vesting[arg1].field_0, 
           vesting[arg1].field_256,
           vesting[arg1].field_512,
           vesting[arg1].field_768,
           vesting[arg1].field_1024
}

function assets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(assets[arg1].field_0), 
           assets[arg1].field_256,
           assets[arg1].field_512,
           bool(assets[arg1].field_672),
           assets[arg1].field_768
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

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_38e96c43(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_59aa78e3Address = address(arg1)
}

function sub_b45392ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_22d3cc43Address = address(arg1)
}

function sub_99a2faaf(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_63fd7f49 = arg1
    sub_d411401d = arg2
    sub_9235f197 = arg3
    sub_67f77e9b = arg4
    sub_33920e29 = arg5
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

function sub_f90f2107(?) payable {
    staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_22d3cc43Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    return ext_call.return_data[14 len 18]
}

function sub_9f882bd5(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    assets[address(arg1)].field_0 = uint8(bool(arg2))
    assets[address(arg1)].field_256 = arg3
    assets[address(arg1)].field_512 = address(arg4)
    assets[address(arg1)].field_672 = Mask(96, 0, bool(arg5))
    assets[address(arg1)].field_768 = address(arg6)
}

function sub_cb2635d6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp <= vesting[address(arg1)].field_1024:
        return 0
    if vesting[address(arg1)].field_1024 >= vesting[address(arg1)].field_512:
        return 0
    if block.timestamp > vesting[address(arg1)].field_512:
        if vesting[address(arg1)].field_512 < vesting[address(arg1)].field_1024:
            revert with 0, 17
        if vesting[address(arg1)].field_0 and vesting[address(arg1)].field_512 - vesting[address(arg1)].field_1024 > -1 / vesting[address(arg1)].field_0:
            revert with 0, 17
        if not vesting[address(arg1)].field_256:
            revert with 0, 18
        return ((vesting[address(arg1)].field_512 * vesting[address(arg1)].field_0) - (vesting[address(arg1)].field_1024 * vesting[address(arg1)].field_0) / vesting[address(arg1)].field_256)
    if block.timestamp < vesting[address(arg1)].field_1024:
        revert with 0, 17
    if vesting[address(arg1)].field_0 and block.timestamp - vesting[address(arg1)].field_1024 > -1 / vesting[address(arg1)].field_0:
        revert with 0, 17
    if not vesting[address(arg1)].field_256:
        revert with 0, 18
    return ((block.timestamp * vesting[address(arg1)].field_0) - (vesting[address(arg1)].field_1024 * vesting[address(arg1)].field_0) / vesting[address(arg1)].field_256)
}

function sub_bf855e87(?) payable {
    staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_22d3cc43Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] < 10^17:
        return 0
    if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
        revert with 0, 17
    if 10^6 * ext_call.return_data[14 len 18] / 10^17 < 10^6:
        revert with 0, 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
        return 0
    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 <= sub_9235f197:
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
            revert with 0, 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6:
            revert with 0, 17
        return ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6)
    if sub_9235f197 < sub_63fd7f49:
        revert with 0, 17
    if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
        revert with 0, 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_9235f197:
        revert with 0, 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6:
        revert with 0, 17
    if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > !((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6):
        revert with 0, 17
    return (((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6))
}

function sub_5f390ec0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = sub_22d3cc43Address
    mem[132] = 10^18
    staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_22d3cc43Address, 10^18
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] >= 10^17:
        revert with 0, 'RebateTreasury: unable to buy back'
    staticcall treasuryAddress.epoch() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if lastBuyback == ext_call.return_data[0]:
        revert with 0, 'RebateTreasury: already bought back'
    lastBuyback = ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        if not assets[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            revert with 0, 'RebateTreasury: invalid token'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        if mem[_31] and buybackAmount > -1 / mem[_31]:
            revert with 0, 17
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _32 * buybackAmount / 10^6
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, _32 * buybackAmount / 10^6
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == bool(mem[_35])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getTokenPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not assets[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: token is not a bondable asset'
    if not assets[address(arg1)].field_672:
        staticcall assets[address(arg1)].field_512.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        return ext_call.return_data[14 len 18]
    staticcall assets[address(arg1)].field_768.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall assets[address(arg1)].field_768.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall assets[address(arg1)].field_768.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall assets[address(arg1)].field_768.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall assets[address(arg1)].field_512.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[14 len 18]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
            revert with 0, 17
        return ((ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]))
    if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[14 len 18]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 0, 17
    return ((ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]))
}

function claimRewards() payable {
    if vesting[address(msg.sender)].field_0:
        if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
            if block.timestamp > vesting[address(msg.sender)].field_1024:
                if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                    if block.timestamp > vesting[address(msg.sender)].field_512:
                        if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                            revert with 0, 17
                        if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                            revert with 0, 17
                        if not vesting[address(msg.sender)].field_256:
                            revert with 0, 18
                        if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                            if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                revert with 0, 17
                            vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                            else:
                                vesting[address(msg.sender)].field_1024 = block.timestamp
                            if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                revert with 0, 17
                            totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                            call sub_22d3cc43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if block.timestamp < vesting[address(msg.sender)].field_1024:
                            revert with 0, 17
                        if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                            revert with 0, 17
                        if not vesting[address(msg.sender)].field_256:
                            revert with 0, 18
                        if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                            if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                revert with 0, 17
                            vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                            else:
                                vesting[address(msg.sender)].field_1024 = block.timestamp
                            if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                revert with 0, 17
                            totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                            call sub_22d3cc43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d245f9db(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not assets[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: token is not a bondable asset'
    staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_22d3cc43Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if not assets[address(arg1)].field_0:
        revert with 0, 'RebateTreasury: token is not a bondable asset'
    if not assets[address(arg1)].field_672:
        staticcall assets[address(arg1)].field_512.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sub_22d3cc43Address, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        if ext_call.return_data[14 len 18] < 10^17:
            if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                revert with 0, 17
            if arg2 * Mask(144, 0, ext_call.return_data[0]) and 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 17
            if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) and assets[address(arg1)].field_256 > -1 / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
            revert with 0, 17
        if 10^6 * ext_call.return_data[14 len 18] / 10^17 < 10^6:
            revert with 0, 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
            if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                revert with 0, 17
            if arg2 * Mask(144, 0, ext_call.return_data[0]) and 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 17
            if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) and assets[address(arg1)].field_256 > -1 / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 <= sub_9235f197:
            if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
                revert with 0, 17
            if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6:
                revert with 0, 17
            if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
                revert with 0, 17
            if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                revert with 0, 17
            if arg2 * Mask(144, 0, ext_call.return_data[0]) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) and assets[address(arg1)].field_256 > -1 / (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])):
                revert with 0, 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 18
            return ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if sub_9235f197 < sub_63fd7f49:
            revert with 0, 17
        if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
            revert with 0, 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_9235f197:
            revert with 0, 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6:
            revert with 0, 17
        if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > !((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6):
            revert with 0, 17
        if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
            revert with 0, 17
        if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
            revert with 0, 17
        if arg2 * Mask(144, 0, ext_call.return_data[0]) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
            revert with 0, 17
        if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) and assets[address(arg1)].field_256 > -1 / (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])):
            revert with 0, 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 0, 18
        return ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    staticcall assets[address(arg1)].field_768.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall assets[address(arg1)].field_768.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall assets[address(arg1)].field_768.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall assets[address(arg1)].field_768.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall assets[address(arg1)].field_512.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[14 len 18]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
            revert with 0, 17
        staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sub_22d3cc43Address, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        if ext_call.return_data[14 len 18] < 10^17:
            if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                revert with 0, 17
            if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 0, 17
            if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 0, 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 18
            return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
            revert with 0, 17
        if 10^6 * ext_call.return_data[14 len 18] / 10^17 < 10^6:
            revert with 0, 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
            if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                revert with 0, 17
            if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 0, 17
            if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 0, 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 18
            return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 <= sub_9235f197:
            if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
                revert with 0, 17
            if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6:
                revert with 0, 17
            if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
                revert with 0, 17
            if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                revert with 0, 17
            if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 0, 17
            if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 0, 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 18
            return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if sub_9235f197 < sub_63fd7f49:
            revert with 0, 17
        if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
            revert with 0, 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_9235f197:
            revert with 0, 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6:
            revert with 0, 17
        if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > !((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6):
            revert with 0, 17
        if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
            revert with 0, 17
        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
            revert with 0, 17
        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
            revert with 0, 17
        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
            revert with 0, 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 0, 18
        return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[14 len 18]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
        revert with 0, 17
    staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_22d3cc43Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] < 10^17:
        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
            revert with 0, 17
        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 0, 17
        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 0, 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 0, 18
        return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
        revert with 0, 17
    if 10^6 * ext_call.return_data[14 len 18] / 10^17 < 10^6:
        revert with 0, 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
            revert with 0, 17
        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 0, 17
        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 0, 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 0, 18
        return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 <= sub_9235f197:
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
            revert with 0, 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6:
            revert with 0, 17
        if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
            revert with 0, 17
        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
            revert with 0, 17
        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 0, 17
        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 0, 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 0, 18
        return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    if sub_9235f197 < sub_63fd7f49:
        revert with 0, 17
    if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
        revert with 0, 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_9235f197:
        revert with 0, 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6:
        revert with 0, 17
    if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > !((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6):
        revert with 0, 17
    if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
        revert with 0, 17
    if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
        revert with 0, 17
    if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
        revert with 0, 17
    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
        revert with 0, 17
    if not Mask(144, 0, ext_call.return_data[0]):
        revert with 0, 18
    return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
}

function bond(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not assets[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: token is not a bondable asset'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: invalid bond amount'
    if not assets[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: token is not a bondable asset'
    staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_22d3cc43Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if not assets[address(arg1)].field_0:
        revert with 0, 'RebateTreasury: token is not a bondable asset'
    if not assets[address(arg1)].field_672:
        staticcall assets[address(arg1)].field_512.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sub_22d3cc43Address, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        if ext_call.return_data[14 len 18] < 10^17:
            if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                revert with 0, 17
            if arg2 * Mask(144, 0, ext_call.return_data[0]) and 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 17
            if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) and assets[address(arg1)].field_256 > -1 / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 0, 18
            staticcall sub_22d3cc43Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < totalVested:
                revert with 0, 17
            if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                revert with 0, 'RebateTreasury: insufficient zombie balance'
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if vesting[address(msg.sender)].field_0:
                if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                    if block.timestamp > vesting[address(msg.sender)].field_1024:
                        if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                    revert with 0, 17
                                if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                    revert with 0, 17
                                if not vesting[address(msg.sender)].field_256:
                                    revert with 0, 18
                                if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                    if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                        revert with 0, 17
                                    vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                    if block.timestamp > vesting[address(msg.sender)].field_512:
                                        vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                    else:
                                        vesting[address(msg.sender)].field_1024 = block.timestamp
                                    if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                        revert with 0, 17
                                    totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                    call sub_22d3cc43Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if block.timestamp < vesting[address(msg.sender)].field_1024:
                                    revert with 0, 17
                                if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                    revert with 0, 17
                                if not vesting[address(msg.sender)].field_256:
                                    revert with 0, 18
                                if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                    if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                        revert with 0, 17
                                    vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                    if block.timestamp > vesting[address(msg.sender)].field_512:
                                        vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                    else:
                                        vesting[address(msg.sender)].field_1024 = block.timestamp
                                    if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                        revert with 0, 17
                                    totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                    call sub_22d3cc43Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                revert with 0, 17
            if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !(10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                revert with 0, 17
            vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0]))
            vesting[msg.sender].field_256 = sub_33920e29
            if block.timestamp > !sub_33920e29:
                revert with 0, 17
            vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
            vesting[msg.sender].field_768 = 0
            vesting[msg.sender].field_1024 = block.timestamp
            if totalVested > !(10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                revert with 0, 17
            totalVested += 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0])
        else:
            if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
                revert with 0, 17
            if 10^6 * ext_call.return_data[14 len 18] / 10^17 < 10^6:
                revert with 0, 17
            if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
                if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                    revert with 0, 17
                if arg2 * Mask(144, 0, ext_call.return_data[0]) and 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) and assets[address(arg1)].field_256 > -1 / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(144, 0, ext_call.return_data[0]):
                    revert with 0, 18
                staticcall sub_22d3cc43Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < totalVested:
                    revert with 0, 17
                if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                    revert with 0, 'RebateTreasury: insufficient zombie balance'
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if vesting[address(msg.sender)].field_0:
                    if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                        if block.timestamp > vesting[address(msg.sender)].field_1024:
                            if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                    if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                        revert with 0, 17
                                    if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    if not vesting[address(msg.sender)].field_256:
                                        revert with 0, 18
                                    if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                        if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                            revert with 0, 17
                                        vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                        else:
                                            vesting[address(msg.sender)].field_1024 = block.timestamp
                                        if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            revert with 0, 17
                                        totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        call sub_22d3cc43Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if block.timestamp < vesting[address(msg.sender)].field_1024:
                                        revert with 0, 17
                                    if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    if not vesting[address(msg.sender)].field_256:
                                        revert with 0, 18
                                    if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                        if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                            revert with 0, 17
                                        vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                        else:
                                            vesting[address(msg.sender)].field_1024 = block.timestamp
                                        if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            revert with 0, 17
                                        totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        call sub_22d3cc43Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                    revert with 0, 17
                if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !(10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                    revert with 0, 17
                vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                vesting[msg.sender].field_256 = sub_33920e29
                if block.timestamp > !sub_33920e29:
                    revert with 0, 17
                vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                vesting[msg.sender].field_768 = 0
                vesting[msg.sender].field_1024 = block.timestamp
                if totalVested > !(10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                    revert with 0, 17
                totalVested += 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256 / 10^12 / Mask(144, 0, ext_call.return_data[0])
            else:
                if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 <= sub_9235f197:
                    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
                        revert with 0, 17
                    if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6:
                        revert with 0, 17
                    if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
                        revert with 0, 17
                    if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                        revert with 0, 17
                    if arg2 * Mask(144, 0, ext_call.return_data[0]) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) and assets[address(arg1)].field_256 > -1 / (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    if not Mask(144, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    staticcall sub_22d3cc43Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalVested:
                        revert with 0, 17
                    if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                        revert with 0, 'RebateTreasury: insufficient zombie balance'
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if vesting[address(msg.sender)].field_0:
                        if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                            if block.timestamp > vesting[address(msg.sender)].field_1024:
                                if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                    if block.timestamp > vesting[address(msg.sender)].field_512:
                                        if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                            revert with 0, 17
                                        if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if not vesting[address(msg.sender)].field_256:
                                            revert with 0, 18
                                        if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                revert with 0, 17
                                            vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                            else:
                                                vesting[address(msg.sender)].field_1024 = block.timestamp
                                            if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            call sub_22d3cc43Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if block.timestamp < vesting[address(msg.sender)].field_1024:
                                            revert with 0, 17
                                        if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if not vesting[address(msg.sender)].field_256:
                                            revert with 0, 18
                                        if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                revert with 0, 17
                                            vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                            else:
                                                vesting[address(msg.sender)].field_1024 = block.timestamp
                                            if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            call sub_22d3cc43Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                        revert with 0, 17
                    if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    vesting[msg.sender].field_256 = sub_33920e29
                    if block.timestamp > !sub_33920e29:
                        revert with 0, 17
                    vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                    vesting[msg.sender].field_768 = 0
                    vesting[msg.sender].field_1024 = block.timestamp
                    if totalVested > !((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    totalVested += (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
                else:
                    if sub_9235f197 < sub_63fd7f49:
                        revert with 0, 17
                    if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
                        revert with 0, 17
                    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_9235f197:
                        revert with 0, 17
                    if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6:
                        revert with 0, 17
                    if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > !((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6):
                        revert with 0, 17
                    if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
                        revert with 0, 17
                    if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                        revert with 0, 17
                    if arg2 * Mask(144, 0, ext_call.return_data[0]) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) and assets[address(arg1)].field_256 > -1 / (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    if not Mask(144, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    staticcall sub_22d3cc43Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalVested:
                        revert with 0, 17
                    if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                        revert with 0, 'RebateTreasury: insufficient zombie balance'
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if vesting[address(msg.sender)].field_0:
                        if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                            if block.timestamp > vesting[address(msg.sender)].field_1024:
                                if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                    if block.timestamp > vesting[address(msg.sender)].field_512:
                                        if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                            revert with 0, 17
                                        if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if not vesting[address(msg.sender)].field_256:
                                            revert with 0, 18
                                        if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                revert with 0, 17
                                            vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                            else:
                                                vesting[address(msg.sender)].field_1024 = block.timestamp
                                            if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            call sub_22d3cc43Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if block.timestamp < vesting[address(msg.sender)].field_1024:
                                            revert with 0, 17
                                        if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if not vesting[address(msg.sender)].field_256:
                                            revert with 0, 18
                                        if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                revert with 0, 17
                                            vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                            else:
                                                vesting[address(msg.sender)].field_1024 = block.timestamp
                                            if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            call sub_22d3cc43Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                        revert with 0, 17
                    if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    vesting[msg.sender].field_256 = sub_33920e29
                    if block.timestamp > !sub_33920e29:
                        revert with 0, 17
                    vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                    vesting[msg.sender].field_768 = 0
                    vesting[msg.sender].field_1024 = block.timestamp
                    if totalVested > !((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    totalVested += (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
    else:
        staticcall assets[address(arg1)].field_768.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall assets[address(arg1)].field_768.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall assets[address(arg1)].field_768.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall assets[address(arg1)].field_768.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall assets[address(arg1)].field_512.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[14 len 18]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]):
                revert with 0, 17
            staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args sub_22d3cc43Address, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[14 len 18]
            if ext_call.return_data[14 len 18] < 10^17:
                if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                    revert with 0, 17
                if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                    revert with 0, 17
                if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                    revert with 0, 17
                if not Mask(144, 0, ext_call.return_data[0]):
                    revert with 0, 18
                staticcall sub_22d3cc43Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < totalVested:
                    revert with 0, 17
                if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                    revert with 0, 'RebateTreasury: insufficient zombie balance'
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if vesting[address(msg.sender)].field_0:
                    if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                        if block.timestamp > vesting[address(msg.sender)].field_1024:
                            if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                    if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                        revert with 0, 17
                                    if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    if not vesting[address(msg.sender)].field_256:
                                        revert with 0, 18
                                    if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                        if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                            revert with 0, 17
                                        vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                        else:
                                            vesting[address(msg.sender)].field_1024 = block.timestamp
                                        if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            revert with 0, 17
                                        totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        call sub_22d3cc43Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if block.timestamp < vesting[address(msg.sender)].field_1024:
                                        revert with 0, 17
                                    if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    if not vesting[address(msg.sender)].field_256:
                                        revert with 0, 18
                                    if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                        if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                            revert with 0, 17
                                        vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                        else:
                                            vesting[address(msg.sender)].field_1024 = block.timestamp
                                        if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            revert with 0, 17
                                        totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        call sub_22d3cc43Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                    revert with 0, 17
                if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                    revert with 0, 17
                vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                vesting[msg.sender].field_256 = sub_33920e29
                if block.timestamp > !sub_33920e29:
                    revert with 0, 17
                vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                vesting[msg.sender].field_768 = 0
                vesting[msg.sender].field_1024 = block.timestamp
                if totalVested > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                    revert with 0, 17
                totalVested += (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
                    revert with 0, 17
                if 10^6 * ext_call.return_data[14 len 18] / 10^17 < 10^6:
                    revert with 0, 17
                if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
                    if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                        revert with 0, 17
                    if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                        revert with 0, 17
                    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                        revert with 0, 17
                    if not Mask(144, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    staticcall sub_22d3cc43Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalVested:
                        revert with 0, 17
                    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                        revert with 0, 'RebateTreasury: insufficient zombie balance'
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if vesting[address(msg.sender)].field_0:
                        if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                            if block.timestamp > vesting[address(msg.sender)].field_1024:
                                if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                    if block.timestamp > vesting[address(msg.sender)].field_512:
                                        if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                            revert with 0, 17
                                        if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if not vesting[address(msg.sender)].field_256:
                                            revert with 0, 18
                                        if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                revert with 0, 17
                                            vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                            else:
                                                vesting[address(msg.sender)].field_1024 = block.timestamp
                                            if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            call sub_22d3cc43Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if block.timestamp < vesting[address(msg.sender)].field_1024:
                                            revert with 0, 17
                                        if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if not vesting[address(msg.sender)].field_256:
                                            revert with 0, 18
                                        if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                revert with 0, 17
                                            vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                            else:
                                                vesting[address(msg.sender)].field_1024 = block.timestamp
                                            if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            call sub_22d3cc43Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                        revert with 0, 17
                    if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    vesting[msg.sender].field_256 = sub_33920e29
                    if block.timestamp > !sub_33920e29:
                        revert with 0, 17
                    vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                    vesting[msg.sender].field_768 = 0
                    vesting[msg.sender].field_1024 = block.timestamp
                    if totalVested > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    totalVested += (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
                else:
                    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 <= sub_9235f197:
                        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
                            revert with 0, 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6:
                            revert with 0, 17
                        if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
                            revert with 0, 17
                        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                            revert with 0, 17
                        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                            revert with 0, 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                            revert with 0, 17
                        if not Mask(144, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        staticcall sub_22d3cc43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalVested:
                            revert with 0, 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                            revert with 0, 'RebateTreasury: insufficient zombie balance'
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if vesting[address(msg.sender)].field_0:
                            if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                                if block.timestamp > vesting[address(msg.sender)].field_1024:
                                    if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                                revert with 0, 17
                                            if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if not vesting[address(msg.sender)].field_256:
                                                revert with 0, 18
                                            if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                    revert with 0, 17
                                                vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                                    vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                                else:
                                                    vesting[address(msg.sender)].field_1024 = block.timestamp
                                                if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                call sub_22d3cc43Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if block.timestamp < vesting[address(msg.sender)].field_1024:
                                                revert with 0, 17
                                            if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if not vesting[address(msg.sender)].field_256:
                                                revert with 0, 18
                                            if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                    revert with 0, 17
                                                vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                                    vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                                else:
                                                    vesting[address(msg.sender)].field_1024 = block.timestamp
                                                if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                call sub_22d3cc43Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                            revert with 0, 17
                        if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                            revert with 0, 17
                        vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                        vesting[msg.sender].field_256 = sub_33920e29
                        if block.timestamp > !sub_33920e29:
                            revert with 0, 17
                        vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                        vesting[msg.sender].field_768 = 0
                        vesting[msg.sender].field_1024 = block.timestamp
                        if totalVested > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                            revert with 0, 17
                        totalVested += (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
                    else:
                        if sub_9235f197 < sub_63fd7f49:
                            revert with 0, 17
                        if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
                            revert with 0, 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_9235f197:
                            revert with 0, 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6:
                            revert with 0, 17
                        if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > !((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6):
                            revert with 0, 17
                        if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
                            revert with 0, 17
                        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                            revert with 0, 17
                        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                            revert with 0, 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                            revert with 0, 17
                        if not Mask(144, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        staticcall sub_22d3cc43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalVested:
                            revert with 0, 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                            revert with 0, 'RebateTreasury: insufficient zombie balance'
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if vesting[address(msg.sender)].field_0:
                            if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                                if block.timestamp > vesting[address(msg.sender)].field_1024:
                                    if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                                revert with 0, 17
                                            if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if not vesting[address(msg.sender)].field_256:
                                                revert with 0, 18
                                            if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                    revert with 0, 17
                                                vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                                    vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                                else:
                                                    vesting[address(msg.sender)].field_1024 = block.timestamp
                                                if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                call sub_22d3cc43Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if block.timestamp < vesting[address(msg.sender)].field_1024:
                                                revert with 0, 17
                                            if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if not vesting[address(msg.sender)].field_256:
                                                revert with 0, 18
                                            if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                    revert with 0, 17
                                                vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                                    vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                                else:
                                                    vesting[address(msg.sender)].field_1024 = block.timestamp
                                                if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                call sub_22d3cc43Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                            revert with 0, 17
                        if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                            revert with 0, 17
                        vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                        vesting[msg.sender].field_256 = sub_33920e29
                        if block.timestamp > !sub_33920e29:
                            revert with 0, 17
                        vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                        vesting[msg.sender].field_768 = 0
                        vesting[msg.sender].field_1024 = block.timestamp
                        if totalVested > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                            revert with 0, 17
                        totalVested += (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
        else:
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[14 len 18]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]):
                revert with 0, 17
            staticcall sub_59aa78e3Address.consult(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args sub_22d3cc43Address, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[14 len 18]
            if ext_call.return_data[14 len 18] < 10^17:
                if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
                    revert with 0, 17
                if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                    revert with 0, 17
                if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                    revert with 0, 17
                if not Mask(144, 0, ext_call.return_data[0]):
                    revert with 0, 18
                staticcall sub_22d3cc43Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < totalVested:
                    revert with 0, 17
                if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                    revert with 0, 'RebateTreasury: insufficient zombie balance'
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if vesting[address(msg.sender)].field_0:
                    if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                        if block.timestamp > vesting[address(msg.sender)].field_1024:
                            if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                    if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                        revert with 0, 17
                                    if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    if not vesting[address(msg.sender)].field_256:
                                        revert with 0, 18
                                    if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                        if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                            revert with 0, 17
                                        vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                        else:
                                            vesting[address(msg.sender)].field_1024 = block.timestamp
                                        if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            revert with 0, 17
                                        totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        call sub_22d3cc43Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if block.timestamp < vesting[address(msg.sender)].field_1024:
                                        revert with 0, 17
                                    if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    if not vesting[address(msg.sender)].field_256:
                                        revert with 0, 18
                                    if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                        if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                            revert with 0, 17
                                        vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                        else:
                                            vesting[address(msg.sender)].field_1024 = block.timestamp
                                        if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            revert with 0, 17
                                        totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        call sub_22d3cc43Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                    revert with 0, 17
                if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                    revert with 0, 17
                vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                vesting[msg.sender].field_256 = sub_33920e29
                if block.timestamp > !sub_33920e29:
                    revert with 0, 17
                vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                vesting[msg.sender].field_768 = 0
                vesting[msg.sender].field_1024 = block.timestamp
                if totalVested > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                    revert with 0, 17
                totalVested += (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
                    revert with 0, 17
                if 10^6 * ext_call.return_data[14 len 18] / 10^17 < 10^6:
                    revert with 0, 17
                if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
                    if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
                        revert with 0, 17
                    if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                        revert with 0, 17
                    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                        revert with 0, 17
                    if not Mask(144, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    staticcall sub_22d3cc43Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalVested:
                        revert with 0, 17
                    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                        revert with 0, 'RebateTreasury: insufficient zombie balance'
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if vesting[address(msg.sender)].field_0:
                        if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                            if block.timestamp > vesting[address(msg.sender)].field_1024:
                                if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                    if block.timestamp > vesting[address(msg.sender)].field_512:
                                        if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                            revert with 0, 17
                                        if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if not vesting[address(msg.sender)].field_256:
                                            revert with 0, 18
                                        if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                revert with 0, 17
                                            vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                            else:
                                                vesting[address(msg.sender)].field_1024 = block.timestamp
                                            if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            call sub_22d3cc43Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if block.timestamp < vesting[address(msg.sender)].field_1024:
                                            revert with 0, 17
                                        if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        if not vesting[address(msg.sender)].field_256:
                                            revert with 0, 18
                                        if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                            if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                revert with 0, 17
                                            vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if block.timestamp > vesting[address(msg.sender)].field_512:
                                                vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                            else:
                                                vesting[address(msg.sender)].field_1024 = block.timestamp
                                            if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            call sub_22d3cc43Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                        revert with 0, 17
                    if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    vesting[msg.sender].field_256 = sub_33920e29
                    if block.timestamp > !sub_33920e29:
                        revert with 0, 17
                    vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                    vesting[msg.sender].field_768 = 0
                    vesting[msg.sender].field_1024 = block.timestamp
                    if totalVested > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                        revert with 0, 17
                    totalVested += (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
                else:
                    if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 <= sub_9235f197:
                        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_63fd7f49:
                            revert with 0, 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_63fd7f49 - 10^6:
                            revert with 0, 17
                        if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
                            revert with 0, 17
                        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
                            revert with 0, 17
                        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                            revert with 0, 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                            revert with 0, 17
                        if not Mask(144, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        staticcall sub_22d3cc43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalVested:
                            revert with 0, 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                            revert with 0, 'RebateTreasury: insufficient zombie balance'
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if vesting[address(msg.sender)].field_0:
                            if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                                if block.timestamp > vesting[address(msg.sender)].field_1024:
                                    if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                                revert with 0, 17
                                            if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if not vesting[address(msg.sender)].field_256:
                                                revert with 0, 18
                                            if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                    revert with 0, 17
                                                vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                                    vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                                else:
                                                    vesting[address(msg.sender)].field_1024 = block.timestamp
                                                if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                call sub_22d3cc43Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if block.timestamp < vesting[address(msg.sender)].field_1024:
                                                revert with 0, 17
                                            if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if not vesting[address(msg.sender)].field_256:
                                                revert with 0, 18
                                            if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                    revert with 0, 17
                                                vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                                    vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                                else:
                                                    vesting[address(msg.sender)].field_1024 = block.timestamp
                                                if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                call sub_22d3cc43Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                            revert with 0, 17
                        if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                            revert with 0, 17
                        vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                        vesting[msg.sender].field_256 = sub_33920e29
                        if block.timestamp > !sub_33920e29:
                            revert with 0, 17
                        vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                        vesting[msg.sender].field_768 = 0
                        vesting[msg.sender].field_1024 = block.timestamp
                        if totalVested > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                            revert with 0, 17
                        totalVested += (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_d411401d) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
                    else:
                        if sub_9235f197 < sub_63fd7f49:
                            revert with 0, 17
                        if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
                            revert with 0, 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^17) - 10^6 < sub_9235f197:
                            revert with 0, 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^17) + -sub_9235f197 - 10^6:
                            revert with 0, 17
                        if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > !((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6):
                            revert with 0, 17
                        if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
                            revert with 0, 17
                        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
                            revert with 0, 17
                        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                            revert with 0, 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and assets[address(arg1)].field_256 > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                            revert with 0, 17
                        if not Mask(144, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        staticcall sub_22d3cc43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalVested:
                            revert with 0, 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - totalVested:
                            revert with 0, 'RebateTreasury: insufficient zombie balance'
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if vesting[address(msg.sender)].field_0:
                            if vesting[address(msg.sender)].field_0 != vesting[address(msg.sender)].field_768:
                                if block.timestamp > vesting[address(msg.sender)].field_1024:
                                    if vesting[address(msg.sender)].field_1024 < vesting[address(msg.sender)].field_512:
                                        if block.timestamp > vesting[address(msg.sender)].field_512:
                                            if vesting[address(msg.sender)].field_512 < vesting[address(msg.sender)].field_1024:
                                                revert with 0, 17
                                            if vesting[address(msg.sender)].field_0 and vesting[address(msg.sender)].field_512 - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if not vesting[address(msg.sender)].field_256:
                                                revert with 0, 18
                                            if (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                if vesting[address(msg.sender)].field_768 > !((vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                    revert with 0, 17
                                                vesting[address(msg.sender)].field_768 += (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                                    vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                                else:
                                                    vesting[address(msg.sender)].field_1024 = block.timestamp
                                                if totalVested < (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                totalVested -= (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                call sub_22d3cc43Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (vesting[address(msg.sender)].field_512 * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if block.timestamp < vesting[address(msg.sender)].field_1024:
                                                revert with 0, 17
                                            if vesting[address(msg.sender)].field_0 and block.timestamp - vesting[address(msg.sender)].field_1024 > -1 / vesting[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if not vesting[address(msg.sender)].field_256:
                                                revert with 0, 18
                                            if (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                if vesting[address(msg.sender)].field_768 > !((block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256):
                                                    revert with 0, 17
                                                vesting[address(msg.sender)].field_768 += (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if block.timestamp > vesting[address(msg.sender)].field_512:
                                                    vesting[address(msg.sender)].field_1024 = vesting[address(msg.sender)].field_512
                                                else:
                                                    vesting[address(msg.sender)].field_1024 = block.timestamp
                                                if totalVested < (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                totalVested -= (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                call sub_22d3cc43Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (block.timestamp * vesting[address(msg.sender)].field_0) - (vesting[address(msg.sender)].field_1024 * vesting[address(msg.sender)].field_0) / vesting[address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if vesting[msg.sender].field_0 < vesting[msg.sender].field_768:
                            revert with 0, 17
                        if vesting[msg.sender].field_0 - vesting[msg.sender].field_768 > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                            revert with 0, 17
                        vesting[msg.sender].field_0 = vesting[msg.sender].field_0 - vesting[msg.sender].field_768 + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                        vesting[msg.sender].field_256 = sub_33920e29
                        if block.timestamp > !sub_33920e29:
                            revert with 0, 17
                        vesting[msg.sender].field_512 = block.timestamp + sub_33920e29
                        vesting[msg.sender].field_768 = 0
                        vesting[msg.sender].field_1024 = block.timestamp
                        if totalVested > !((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])):
                            revert with 0, 17
                        totalVested += (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^17 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0])
}



}
