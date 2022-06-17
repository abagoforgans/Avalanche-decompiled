contract main {




// =====================  Runtime code  =====================


#
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
array of address stor6;
array of address stor7;

function owner() payable {
    return owner
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

function sub_ef2baef7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ext_code.size(address(('cd', 4)[2]))
    staticcall address(('cd', 4)[2]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4).length == ('cd', 4).length
    stor1 = ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    stor2 = address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    stor3 = address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    stor4 = address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    stor5 = address(('cd', 4)[3])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > 18446744073709551616:
        revert with 'NH{q', 65
    stor6.length = cd[(cd[4] + ('cd', 4)[4] + 4)]
    if cd[(cd[4] + ('cd', 4)[4] + 4)] < stor6.length:
        idx = cd[(cd[4] + ('cd', 4)[4] + 4)]
        while idx < stor6.length:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = cd[4] + ('cd', 4)[4] + 36
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[t] == address(cd[t])
        address(stor6[s]) = address(cd[t])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > 18446744073709551616:
        revert with 'NH{q', 65
    stor7.length = cd[(cd[4] + ('cd', 4)[5] + 4)]
    if cd[(cd[4] + ('cd', 4)[5] + 4)] < stor7.length:
        idx = cd[(cd[4] + ('cd', 4)[5] + 4)]
        while idx < stor7.length:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = cd[4] + ('cd', 4)[5] + 36
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        require cd[t] == address(cd[t])
        address(stor7[s]) = address(cd[t])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    revert with 0, 'before pangolin swap'
}

function skim(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
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
        emit 0xa271a759: ext_call.return_data[0], arg1, arg2
    return ext_call.return_data[0]
}

function sub_b9ee0863(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
    require ('cd', 4)[0] < calldata.size + -cd[4] - 259
    require cd[(cd[4] + ('cd', 4)[0] + 132)] == address(cd[(cd[4] + ('cd', 4)[0] + 132)])
    require ext_code.size(address(cd[(cd[4] + ('cd', 4)[0] + 132)]))
    staticcall address(cd[(cd[4] + ('cd', 4)[0] + 132)]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require cd[(cd[4] + ('cd', 4)[0] + 100)] == address(cd[(cd[4] + ('cd', 4)[0] + 100)])
    require cd[(cd[4] + ('cd', 4)[0] + 36)] == cd[(cd[4] + ('cd', 4)[0] + 36)]
    stor1 = cd[(cd[4] + ('cd', 4)[0] + 36)]
    require cd[(cd[4] + ('cd', 4)[0] + 68)] == address(cd[(cd[4] + ('cd', 4)[0] + 68)])
    stor2 = address(cd[(cd[4] + ('cd', 4)[0] + 68)])
    require cd[(cd[4] + ('cd', 4)[0] + 100)] == address(cd[(cd[4] + ('cd', 4)[0] + 100)])
    stor3 = address(cd[(cd[4] + ('cd', 4)[0] + 100)])
    require cd[(cd[4] + ('cd', 4)[0] + 132)] == address(cd[(cd[4] + ('cd', 4)[0] + 132)])
    stor4 = address(cd[(cd[4] + ('cd', 4)[0] + 132)])
    require cd[(cd[4] + ('cd', 4)[0] + 164)] == address(cd[(cd[4] + ('cd', 4)[0] + 164)])
    stor5 = address(cd[(cd[4] + ('cd', 4)[0] + 164)])
    require cd[(cd[4] + ('cd', 4)[0] + 196)] < calldata.size + -cd[4] + -('cd', 4)[0] - 67
    require cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 36)])
    if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 36)] > 18446744073709551616:
        revert with 'NH{q', 65
    stor6.length = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 36)]
    if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 36)] < stor6.length:
        idx = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 36)]
        while idx < stor6.length:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 68
    while idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 196)] + 36)]:
        require cd[t] == address(cd[t])
        address(stor6[s]) = address(cd[t])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require cd[(cd[4] + ('cd', 4)[0] + 228)] < calldata.size + -cd[4] + -('cd', 4)[0] - 67
    require cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 68 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 36)])
    if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 36)] > 18446744073709551616:
        revert with 'NH{q', 65
    stor7.length = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 36)]
    if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 36)] < stor7.length:
        idx = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 36)]
        while idx < stor7.length:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 68
    while idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 228)] + 36)]:
        require cd[t] == address(cd[t])
        address(stor7[s]) = address(cd[t])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    revert with 0, 'before pangolin swap'
}



}
