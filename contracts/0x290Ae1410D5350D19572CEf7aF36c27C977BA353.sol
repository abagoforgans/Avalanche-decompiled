contract main {




// =====================  Runtime code  =====================


const WAVAX = 1

const WETH = 2


address owner;
mapping of address sub_2e17b8d6;
mapping of address sub_c4beb147;

function sub_2e17b8d6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2e17b8d6[arg1]
}

function owner() payable {
    return owner
}

function sub_bc7884ad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2e17b8d6[address(arg1)]
}

function sub_c4beb147(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_c4beb147[arg1]
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

function sub_08100eed(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c4beb147[arg1] = address(arg2)
}

function setPriceSource(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e17b8d6[address(arg1)] = arg2
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

function sub_580a560e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_2e17b8d6[address(arg1)])
    staticcall sub_2e17b8d6[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function latestRoundData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_2e17b8d6[address(arg1)])
    staticcall sub_2e17b8d6[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[22 len 10], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           Mask(80, 0, ext_call.return_data[128])
}

function sub_b89e497e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(sub_2e17b8d6[address(arg1)])
    staticcall sub_2e17b8d6[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and ext_call.return_data[32] > -1 / arg2:
            revert with 'NH{q', 17
        return (arg2 * ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if arg2 and ext_call.return_data[32] > -1 / arg2:
            revert with 'NH{q', 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 'NH{q', 18
        return (arg2 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1])
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
    if arg2 and ext_call.return_data[32] > -1 / arg2:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    return (arg2 * ext_call.return_data[32] / t * s)
}

function sub_31866454(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(sub_2e17b8d6[address(arg1)])
    staticcall sub_2e17b8d6[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        return (arg2 / ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        return (arg2 * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32])
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
    if arg2 and t * s > -1 / arg2:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    return (arg2 * t * s / ext_call.return_data[32])
}



}
