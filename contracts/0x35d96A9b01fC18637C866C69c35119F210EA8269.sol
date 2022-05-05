contract main {




// =====================  Runtime code  =====================


#
#  - withdrawFunds(uint256 arg1)
#  - sub_39cd929a(?)
#
address owner;
uint256 stor1;
uint8 stor2;
mapping of struct refunded;
address stor4;
address stor5;

function paused() payable {
    return bool(stor2)
}

function owner() payable {
    return owner
}

function refunded(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(refunded[arg1].field_0), refunded[arg1].field_8
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

function getBalance() payable {
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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

function sub_0376d4a1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == uint32(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[floor32(('cd', 4).length) + 101] = msg.sender
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Must own an aRarity to mint token'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 156 len 4] < 250:
            revert with 0, 'Cant claim nft obtained from giveaway'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _208 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 156 len 4]
        require ext_code.size(stor5)
        staticcall stor5.0x6352211e with:
                gas gas_remaining wei
               args (_208 << 224)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_213] == mem[_213 + 12 len 20]
        if mem[_213 + 12 len 20] != msg.sender:
            revert with 0, 'Cannot mint a token that isnt based on your existing'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if refunded[mem[(32 * idx) + 156 len 4]].field_0:
            revert with 0, 'This nft has already been claimed'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        refunded[mem[(32 * idx) + 156 len 4]].field_0 = 1
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 156 len 4]
        mem[32] = 3
        refunded[mem[(32 * idx) + 156 len 4]].field_8 = msg.sender
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _234 = mem[(32 * idx) + 128]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = uint32(_234)
        emit 0xecac4f2c: msg.sender, uint32(_234)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if mem[96] > 0x11e54c672874dae505198c09d5b36cf10bb80bbc3d7a25a7a10aeeb820b:
        revert with 'NH{q', 17
    _210 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = 15 * 10^6 * mem[96]
    _215 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_210 + 100] = 32
    mem[_210 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stor4) <= 0:
        revert with 0, 'Address: call to non-contract'
    _230 = mem[_215]
    mem[_210 + 164 len ceil32(mem[_215])] = mem[_215 + 32 len ceil32(mem[_215])]
    if ceil32(_230) > _230:
        mem[_210 + _230 + 164] = 0
    call stor4 with:
         gas gas_remaining wei
        args mem[_210 + 168 len _230 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96] > 0:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_210 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_210 + 196] == bool(mem[_210 + 196])
            if not mem[_210 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
}



}
