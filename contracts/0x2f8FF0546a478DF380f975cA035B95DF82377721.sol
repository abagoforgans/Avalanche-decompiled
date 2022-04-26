contract main {




// =====================  Runtime code  =====================


address owner;
address controllerAddress;
mapping of address integrationAdapterWithHash;

function owner() payable {
    return owner
}

function getIntegrationAdapterWithHash(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return integrationAdapterWithHash[address(arg1)][arg2]
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function getIntegrationAdapter(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = integrationAdapterWithHash[address(arg1)][sha3(arg2[all])]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function isValidIntegration(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = not not integrationAdapterWithHash[address(arg1)][sha3(arg2[all])]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function removeIntegration(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not integrationAdapterWithHash[address(arg1)][sha3(arg2[all])]:
        revert with 0, 'Integration does not exist.'
    integrationAdapterWithHash[address(arg1)][sha3(arg2[all])] = 0
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    emit IntegrationRemoved(address rg1, address rg2, string rg3):
                            Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                            mem[arg2.length + 160 len (4 * ceil32(arg2.length)) + -arg2.length + 32],
                            arg1,
                            integrationAdapterWithHash[address(arg1)][sha3(arg2[all])],
}

function editIntegration(address arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x42f6e389 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if not 0, ext_call.return_data[4 len 28]:
        revert with 0, 'Must be valid module.'
    if not integrationAdapterWithHash[address(arg1)][sha3(arg2[all])]:
        revert with 0, 'Integration does not exist.'
    if not arg3:
        revert with 0, 'Adapter address must exist.'
    integrationAdapterWithHash[address(arg1)][sha3(arg2[all])] = arg3
    emit IntegrationEdited(address(arg3), Array(len=arg2.length, data=arg2[all]), arg1);
}

function addIntegration(address arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x42f6e389 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if not 0, ext_call.return_data[4 len 28]:
        revert with 0, 'Must be valid module.'
    if integrationAdapterWithHash[address(arg1)][sha3(arg2[all])]:
        revert with 0, 'Integration exists already.'
    if not arg3:
        revert with 0, 'Adapter address must exist.'
    integrationAdapterWithHash[address(arg1)][sha3(arg2[all])] = arg3
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 32
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + arg2.length + 192] = 0
    emit IntegrationAdded(Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 192 len 2 * ceil32(arg2.length)]), arg1, arg3);
}

function batchAddIntegration(address[] arg1, string[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        _88 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        mem[_88] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_88 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_88 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _88
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    _89 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 >= mem[64] and mem[64] + (32 * arg3.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_89] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = _89 + 32
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _130 = mem[96]
    if not mem[96]:
        revert with 0, 'Modules must not be empty'
    if mem[96] != mem[(32 * arg1.length) + 128]:
        revert with 0, 'Module and name lengths mismatch'
    if mem[96] != arg3.length:
        revert with 0, 'Module and adapter lengths mismatch'
    idx = 0
    while idx < _130:
        require idx < mem[96]
        _171 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _173 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[_89]
        _175 = mem[(32 * idx) + _89 + 32]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        _178 = sha3(mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32 len mem[mem[(32 * idx) + (32 * arg1.length) + 160]]])
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x42f6e389 with:
                gas gas_remaining wei
               args address(_171)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_182] == bool(mem[_182])
        if not mem[_182]:
            revert with 0, 'Must be valid module.'
        if integrationAdapterWithHash[address(_171)][_178]:
            revert with 0, 'Integration exists already.'
        if not address(_175):
            revert with 0, 'Adapter address must exist.'
        mem[0] = _178
        mem[32] = sha3(address(_171), 2)
        integrationAdapterWithHash[address(_171)][_178] = address(_175)
        _190 = mem[64]
        mem[mem[64]] = 32
        _194 = mem[_173]
        mem[mem[64] + 32] = mem[_173]
        s = 0
        while s < _194:
            mem[s + _190 + 64] = mem[_173 + s + 32]
            s = s + 32
            continue 
        if ceil32(_194) > _194:
            mem[_190 + _194 + 64] = 0
        emit IntegrationAdded(mem[mem[64] len ceil32(_194) + _190 + -mem[64] + 64], address(_171), address(_175));
        idx = idx + 1
        continue 
}

function batchEditIntegration(address[] arg1, string[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        _88 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        mem[_88] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_88 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_88 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _88
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    _89 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 >= mem[64] and mem[64] + (32 * arg3.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_89] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = _89 + 32
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _130 = mem[96]
    if not mem[96]:
        revert with 0, 'Modules must not be empty'
    if mem[96] != mem[(32 * arg1.length) + 128]:
        revert with 0, 'Module and name lengths mismatch'
    if mem[96] != arg3.length:
        revert with 0, 'Module and adapter lengths mismatch'
    idx = 0
    while idx < _130:
        require idx < mem[96]
        _171 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _173 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[_89]
        _175 = mem[(32 * idx) + _89 + 32]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        _178 = sha3(mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32 len mem[mem[(32 * idx) + (32 * arg1.length) + 160]]])
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x42f6e389 with:
                gas gas_remaining wei
               args address(_171)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_182] == bool(mem[_182])
        if not mem[_182]:
            revert with 0, 'Must be valid module.'
        if not integrationAdapterWithHash[address(_171)][_178]:
            revert with 0, 'Integration does not exist.'
        if not address(_175):
            revert with 0, 'Adapter address must exist.'
        mem[0] = _178
        mem[32] = sha3(address(_171), 2)
        integrationAdapterWithHash[address(_171)][_178] = address(_175)
        _190 = mem[64]
        mem[mem[64]] = address(_175)
        mem[mem[64] + 32] = 64
        _194 = mem[_173]
        mem[mem[64] + 64] = mem[_173]
        s = 0
        while s < _194:
            mem[s + mem[64] + 96] = mem[_173 + s + 32]
            s = s + 32
            continue 
        if ceil32(_194) > _194:
            mem[_190 + _194 + 96] = 0
        emit IntegrationEdited(address rg1, address rg2, string rg3):
                               mem[mem[64] len ceil32(_194) + _190 + -mem[64] + 96],
                               address(_171),
        idx = idx + 1
        continue 
}



}
