contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
array of uint256 stor1;
address owner;
address storD954;

function count() payable {
    return stor1.length
}

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

function setContract(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0[arg1]:
        stor1.length++
        stor1[stor1.length] = arg1
    stor0[arg1] = arg2
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

function sub_dccd9012(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(storD954)
    staticcall storD954.0xc7497b0c with:
            gas gas_remaining wei
           args 'multisender-notover20-ppp-0d'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool(ceil32(return_data.size) + 448 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_code.size(storD954)
    staticcall storD954.0xc7497b0c with:
            gas gas_remaining wei
           args 'multisender-over20-ppp-0d'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool((2 * ceil32(return_data.size)) + 736 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    if not address(arg2):
        require ext_code.size(stor0[0x4d756c746953656e646572000000000000000000000000000000000000000000])
        staticcall stor0[0x4d756c746953656e646572000000000000000000000000000000000000000000].0xb46631ce with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not bool((4 * ceil32(return_data.size)) + 800 <= test266151307()):
            revert with 0, 65
        return ext_call.return_data[64], 
               ext_call.return_data[64],
               eth.balance(arg1),
               0,
               0,
               ext_call.return_data[0],
               ext_call.return_data[32],
               0
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor0[0x4d756c746953656e646572000000000000000000000000000000000000000000])
    staticcall stor0[0x4d756c746953656e646572000000000000000000000000000000000000000000].0xb46631ce with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((8 * ceil32(return_data.size)) + 800 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[64], 
           ext_call.return_data[64],
           eth.balance(arg1),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           uint8(ext_call.return_data[0])
}

function sub_fbb6e6aa(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        mem[0] = 'Finance' << 200
        mem[32] = 0
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(storD954)
            staticcall storD954.0xc7497b0c with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _147 = mem[64]
            if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 288
            mem[_147] = mem[_140]
            mem[_147 + 32] = mem[_140 + 32]
            mem[_147 + 64] = mem[_140 + 64]
            require mem[_140 + 96] == mem[_140 + 112 len 16]
            mem[_147 + 96] = mem[_140 + 96]
            require mem[_140 + 128] == mem[_140 + 144 len 16]
            mem[_147 + 128] = mem[_140 + 128]
            mem[_147 + 160] = mem[_140 + 160]
            mem[_147 + 192] = mem[_140 + 192]
            require mem[_140 + 224] == mem[_140 + 236 len 20]
            mem[_147 + 224] = mem[_140 + 224]
            require mem[_140 + 256] == mem[_140 + 268 len 20]
            mem[_147 + 256] = mem[_140 + 256]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _147
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _128 = mem[64]
        mem[mem[64]] = 32
        _129 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + 64
        while idx < _129:
            _184 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_184 + 32]
            mem[t + 64] = mem[_184 + 64]
            mem[t + 96] = mem[_184 + 112 len 16]
            mem[t + 128] = mem[_184 + 144 len 16]
            mem[t + 160] = mem[_184 + 160]
            mem[t + 192] = mem[_184 + 192]
            mem[t + 224] = mem[_184 + 236 len 20]
            mem[t + 256] = mem[_184 + 268 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _128 + (288 * _129) + -mem[64] + 64
    mem[64] = (64 * ('cd', 4).length) + 448
    mem[(64 * ('cd', 4).length) + 160] = 0
    mem[(64 * ('cd', 4).length) + 192] = 0
    mem[(64 * ('cd', 4).length) + 224] = 0
    mem[(64 * ('cd', 4).length) + 256] = 0
    mem[(64 * ('cd', 4).length) + 288] = 0
    mem[(64 * ('cd', 4).length) + 320] = 0
    mem[(64 * ('cd', 4).length) + 352] = 0
    mem[(64 * ('cd', 4).length) + 384] = 0
    mem[(64 * ('cd', 4).length) + 416] = 0
    mem[var21001] = (64 * ('cd', 4).length) + 160
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(64 * ('cd', 4).length) + 160] = 0
        mem[(64 * ('cd', 4).length) + 192] = 0
        mem[(64 * ('cd', 4).length) + 224] = 0
        mem[(64 * ('cd', 4).length) + 256] = 0
        mem[(64 * ('cd', 4).length) + 288] = 0
        mem[(64 * ('cd', 4).length) + 320] = 0
        mem[(64 * ('cd', 4).length) + 352] = 0
        mem[(64 * ('cd', 4).length) + 384] = 0
        mem[(64 * ('cd', 4).length) + 416] = 0
        mem[s + 32] = (64 * ('cd', 4).length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = 'Finance' << 200
    mem[32] = 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(storD954)
        staticcall storD954.0xc7497b0c with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _242 = mem[64]
        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 288
        mem[_242] = mem[_239]
        mem[_242 + 32] = mem[_239 + 32]
        mem[_242 + 64] = mem[_239 + 64]
        require mem[_239 + 96] == mem[_239 + 112 len 16]
        mem[_242 + 96] = mem[_239 + 96]
        require mem[_239 + 128] == mem[_239 + 144 len 16]
        mem[_242 + 128] = mem[_239 + 128]
        mem[_242 + 160] = mem[_239 + 160]
        mem[_242 + 192] = mem[_239 + 192]
        require mem[_239 + 224] == mem[_239 + 236 len 20]
        mem[_242 + 224] = mem[_239 + 224]
        require mem[_239 + 256] == mem[_239 + 268 len 20]
        mem[_242 + 256] = mem[_239 + 256]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _242
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _227 = mem[64]
    mem[mem[64]] = 32
    _228 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = mem[64] + 64
    while idx < _228:
        _253 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_253 + 32]
        mem[t + 64] = mem[_253 + 64]
        mem[t + 96] = mem[_253 + 112 len 16]
        mem[t + 128] = mem[_253 + 144 len 16]
        mem[t + 160] = mem[_253 + 160]
        mem[t + 192] = mem[_253 + 192]
        mem[t + 224] = mem[_253 + 236 len 20]
        mem[t + 256] = mem[_253 + 268 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _227 + (288 * _228) + -mem[64] + 64
}



}
