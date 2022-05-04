contract main {




// =====================  Runtime code  =====================


address owner;
uint256 root;
mapping of uint8 stor2;
mapping of address sub_d9201d16;
mapping of uint8 stor4;
uint256 numberOfVaults;

function claimed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[arg1][arg2])
}

function numberOfVaults() payable {
    return numberOfVaults
}

function owner() payable {
    return owner
}

function isClaimed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function vaults(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_d9201d16(?) payable {
    require calldata.size - 4 >= 32
    return sub_d9201d16[arg1]
}

function root() payable {
    return root
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

function sub_47319a26(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    root = arg1
    emit 0x92b5181c: arg1
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

function addVault(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
    if arg2:
        sub_d9201d16[stor5] = arg1
        if numberOfVaults > -2:
            revert with 0, 17
        numberOfVaults++
    emit 0xbe3f555c: arg2, arg1
}

function sub_9c17823b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint128(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128] = address(msg.sender)
    mem[148] = arg1 << 128
    mem[96] = 36
    mem[64] = (32 * arg2.length) + 196
    mem[164] = arg2.length
    mem[196 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 196] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= mem[164]:
            revert with 0, 50
        _21 = mem[(32 * idx) + 196]
        if s + sha3(mem[128 len 36]) > mem[(32 * idx) + 196]:
            mem[mem[64] + 32] = mem[(32 * idx) + 196]
            mem[mem[64] + 64] = s + sha3(mem[128 len 36])
            _24 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_24 + 32 len mem[_24]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 36])
        mem[mem[64] + 64] = _21
        _28 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(mem[_28 + 32 len mem[_28]])
        continue 
    return (root == s)
}

function sub_8ede2f98(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint128(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(address(arg2), 4)
    if stor4[address(arg2)][msg.sender]:
        revert with 0, 'claim: Drop already claimed'
    mem[128] = address(msg.sender)
    mem[148] = arg1 << 128
    mem[96] = 36
    mem[64] = (32 * arg3.length) + 196
    mem[164] = arg3.length
    mem[196 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 196] = 0
    idx = 0
    s = 0
    while idx < arg3.length:
        if idx >= mem[164]:
            revert with 0, 50
        _31 = mem[(32 * idx) + 196]
        if s + sha3(mem[128 len 36]) > mem[(32 * idx) + 196]:
            mem[mem[64] + 32] = mem[(32 * idx) + 196]
            mem[mem[64] + 64] = s + sha3(mem[128 len 36])
            _36 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_36 + 32 len mem[_36]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 36])
        mem[mem[64] + 64] = _31
        _40 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(mem[_40 + 32 len mem[_40]])
        continue 
    if root != s:
        revert with 0, 'claim: Invalid proof'
    require ext_code.size(address(arg2))
    call address(arg2).0xfb0fc076 with:
         gas gas_remaining wei
        args msg.sender, uint128(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(arg2)][msg.sender] = 1
    emit 0x25054561: uint128(arg1), msg.sender, address(arg2)
}



}
