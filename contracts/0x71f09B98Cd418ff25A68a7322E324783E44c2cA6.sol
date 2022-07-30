contract main {




// =====================  Runtime code  =====================


const sub_57b84f8c(?) = sha3(code.data[4914 len 10749], mem[10877 len 3] >> 85736)


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of address stor101;
array of address allPairs;
array of struct allTokens;
uint256 _nextId;
address sub_e30145e0Address;
address sub_be1bd331Address;
uint256 sub_786df8ec;
array of address stor31803416089537561239136862248731574845551118351359000136225178771603843531604;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528494;

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function allTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < allTokens.length
    return allTokens[arg1].field_0
}

function sub_786df8ec(?) payable {
    return sub_786df8ec
}

function owner() payable {
    return owner
}

function sub_be1bd331(?) payable {
    return sub_be1bd331Address
}

function sub_e30145e0(?) payable {
    return sub_e30145e0Address
}

function _nextId() payable {
    return _nextId
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

function sub_c79c4c62(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x9bc521ec: sub_786df8ec, arg1
    sub_786df8ec = arg1
}

function sub_61c8f99d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x3589df28: sub_e30145e0Address, address(arg1)
    sub_e30145e0Address = address(arg1)
}

function sub_b30ebecd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xbfabdf03: sub_be1bd331Address, address(arg1)
    sub_be1bd331Address = address(arg1)
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

function getPairAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall sub_e30145e0Address.0x5cb3b14f with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return stor101[address(arg1)][address(arg2)]
    return stor101[address(arg2)][address(arg1)]
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_786df8ec = 40
}

function sub_3a5f69f8(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if sub_e30145e0Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only called by policyCore contract'
    create2 contract with 0 wei
                    salt: sha3(address(arg1), address(arg2))
                    code: code.data[4914 len 10749]
    require ext_code.size(create2.new_address)
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101[address(arg1)][address(arg2)] = address(create2.new_address)
    allPairs.length++
    stor4650[stor102.length] = address(create2.new_address)
    return address(create2.new_address)
}

function getAllTokens() payable {
    mem[64] = (32 * allTokens.length) + 128
    mem[96] = allTokens.length
    if not allTokens.length:
        mem[(32 * allTokens.length) + 128] = 32
        mem[(32 * allTokens.length) + 160] = allTokens.length
        idx = 0
        s = 128
        t = (32 * allTokens.length) + 192
        while idx < allTokens.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * allTokens.length) + 128
           len (96 * allTokens.length) + 64
    mem[128] = address(allTokens.field_0)
    idx = 128
    s = 0
    while (32 * allTokens.length) + 96 > idx:
        mem[idx + 32] = allTokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allTokens.length) + 128] = 32
    mem[(32 * allTokens.length) + 160] = allTokens.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < allTokens.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * allTokens.length) + -mem[64] + 192
}

function sub_490d7350(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    mem[ceil32(ceil32(arg1.length)) + 129 len 4896] = code.data[15663 len 4896]
    mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 186] = 128
    mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 314] = arg1.length
    mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 346 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 4896) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[floor32(ceil32(ceil32(arg1.length)) + 128) + arg1.length + 346] = 0
    mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 218] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + floor32(ceil32(ceil32(arg1.length)) + 128) + 346] = arg1.length
    mem[ceil32(arg1.length) + floor32(ceil32(ceil32(arg1.length)) + 128) + 378 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 4896) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + floor32(ceil32(ceil32(arg1.length)) + 128) + arg1.length + 378] = 0
    mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 250] = sub_e30145e0Address
    mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 282] = arg2
    mem[(2 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 128) + 410 len 4896] = code.data[15663 len floor32(ceil32(ceil32(arg1.length)) + 128) + -ceil32(ceil32(arg1.length)) + 25], (2 * ceil32(arg1.length)) + 192, Array(len=sub_e30145e0Address, data=arg2, arg1.length, mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 346 len ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 128) + 4679]), ceil32(arg1.length) + 160
    if ceil32(2 * ceil32(arg1.length)) + 6 > (2 * ceil32(arg1.length)) + 192:
        mem[(4 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 128) + 5498] = 0
    mem[(4 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 128) + 5498] = sha3(mem[(2 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 128) + 410 len 4896], mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 186 len ceil32(2 * ceil32(arg1.length)) + 6], mem[(2 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 128) + ceil32(2 * ceil32(arg1.length)) + 5312 len (2 * ceil32(arg1.length)) + -ceil32(2 * ceil32(arg1.length)) + 186])
    return sha3(mem[(2 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 128) + 410 len 4896], mem[floor32(ceil32(ceil32(arg1.length)) + 128) + 186 len ceil32(2 * ceil32(arg1.length)) + 6], mem[(2 * ceil32(arg1.length)) + floor32(ceil32(ceil32(arg1.length)) + 128) + ceil32(2 * ceil32(arg1.length)) + 5312 len (2 * ceil32(arg1.length)) + -ceil32(2 * ceil32(arg1.length)) + 186])
}

function sub_87f0061a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if sub_e30145e0Address != msg.sender:
        revert with 0, 'Only called by policyCore contract'
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len 4896] = code.data[15663 len 4896]
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 186] = 128
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 314] = arg1.length
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 346 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg1.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + arg1.length + 346] = 0
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 218] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 346] = arg1.length
    mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 378 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg1.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + arg1.length + 378] = 0
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 250] = sub_e30145e0Address
    mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 282] = arg2
    mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 410 len 4896] = code.data[15663 len floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + -arg1.length + -ceil32(ceil32(arg1.length)) - 7], (2 * ceil32(arg1.length)) + 192, Array(len=sub_e30145e0Address, data=arg2, arg1.length, mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 346 len arg1.length + ceil32(ceil32(arg1.length)) + -floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 4711]), ceil32(arg1.length) + 160
    if ceil32(2 * ceil32(arg1.length)) + 6 > (2 * ceil32(arg1.length)) + 192:
        mem[(4 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 5498] = 0
    create2 contract with 0 wei
                    salt: sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                    code: mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 410 len 4896], mem[floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 186 len ceil32(2 * ceil32(arg1.length)) + 6], mem[(2 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + ceil32(2 * ceil32(arg1.length)) + 5312 len (2 * ceil32(arg1.length)) + -ceil32(2 * ceil32(arg1.length)) + 186]
    require ext_code.size(create2.new_address)
    allTokens.length++
    stor9787[stor103.length] = address(create2.new_address)
    if not _nextId + 1:
        revert with 0, 17
    _nextId++
    return address(create2.new_address), 
           mem[(4 * ceil32(arg1.length)) + floor32(arg1.length + ceil32(ceil32(arg1.length)) + 160) + 5530 len 4 * ceil32(arg1.length)]
}



}
