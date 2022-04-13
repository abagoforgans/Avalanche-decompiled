contract main {




// =====================  Runtime code  =====================


const getMinFee = 0

const getMaxFee = 5000

const MIN_FEE = 0

const MAX_FEE = 5000


address owner;
address implementationAddress;
address merkleRootSignerAddress;
address feeCollectorAddress;
uint256 fee;
array of address sub_d91959c9;

function merkleRootSigner() payable {
    return merkleRootSignerAddress
}

function implementation() payable {
    return implementationAddress
}

function owner() payable {
    return owner
}

function feeCollector() payable {
    return feeCollectorAddress
}

function sub_d91959c9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_d91959c9[arg1])
    return address(sub_d91959c9[arg1][arg2])
}

function fee() payable {
    return fee
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

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if feeCollectorAddress != msg.sender:
        revert with 0, 'Caller is not fee collector'
    if arg1 > 5000:
        revert with 0, 'Fee goes beyond rank'
    fee = arg1
}

function setFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee collector cannot be zero address'
    feeCollectorAddress = arg1
}

function setMerkleRootSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Merkle root signer cannot be zero address'
    merkleRootSignerAddress = arg1
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

function sub_64434174(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _69 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_69] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_69 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_69 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _69
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _70 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_70] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = _70 + 32
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _136 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_136] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_136 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_136 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _136
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    _137 = mem[64]
    require mem[64] + (32 * ('cd', 100).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 100).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
    mem[_137] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = _137 + 32
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    _201 = mem[64]
    require mem[64] + (32 * ('cd', 132).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 132).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
    mem[_201] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = _201 + 32
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] < 2
    if not address(cd[68]):
        revert with 0, 'Company token cannot be zero address'
    if mem[96] != mem[_70]:
        revert with 0, 'Arrays length should be same'
    if mem[96] != mem[_137]:
        revert with 0, 'Arrays length should be same'
    if mem[96] != ('cd', 132).length:
        revert with 0, 'Arrays length should be same'
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _279 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _281 = mem[_279]
    require mem[_279] == mem[_279 + 31 len 1]
    _326 = mem[96]
    idx = 0
    while idx < _326:
        require idx < mem[_201]
        require idx < mem[_137]
        if mem[(32 * idx) + _137 + 32] > mem[(32 * idx) + _201 + 32]:
            revert with 0, 'activationTimestamp cannot be more than redeemTimestamp'
        mem[mem[64] len 2207] = code.data[3890 len 2207]
        mem[mem[64] + 2207] = this.address
        mem[mem[64] + 2239] = 64
        mem[mem[64] + 2271] = 0
        create contract with 0 wei
                        code: code.data[3890 len 2207], address(this.address), 64, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < mem[96]
        _336 = mem[(32 * idx) + 128]
        require idx < mem[_70]
        _338 = mem[(32 * idx) + _70 + 32]
        require idx < mem[_137]
        _340 = mem[(32 * idx) + _137 + 32]
        require idx < mem[_201]
        _342 = mem[(32 * idx) + _201 + 32]
        mem[mem[64]] = 0xcf3dc76b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 288
        _344 = mem[_336]
        mem[mem[64] + 292] = mem[_336]
        s = 0
        while s < _344:
            mem[s + mem[64] + 324] = mem[_336 + s + 32]
            _326 = mem[96]
            s = s + 32
            continue 
        if ceil32(_344) <= _344:
            mem[mem[64] + 36] = ceil32(_344) + 320
            _371 = mem[_338]
            mem[ceil32(_344) + mem[64] + 324] = mem[_338]
            s = 0
            while s < _371:
                mem[s + ceil32(_344) + mem[64] + 356] = mem[_338 + s + 32]
                _326 = mem[96]
                s = s + 32
                continue 
            if ceil32(_371) > _371:
                mem[ceil32(_344) + mem[64] + _371 + 356] = 0
            mem[mem[64] + 68] = uint8(_281)
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = address(cd[68])
            mem[mem[64] + 196] = _340
            mem[mem[64] + 228] = _342
            require cd[164] < 2
            mem[mem[64] + 260] = cd[164]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xcf3dc76b with:
                 gas gas_remaining wei
                args 288, ceil32(_344) + 320, _281 << 248, msg.sender, address(this.address), address(cd[68]), _340, _342, cd[164], mem[mem[64] + 292 len ceil32(_371) + ceil32(_344) + 64]
        else:
            mem[mem[64] + _344 + 324] = 0
            mem[mem[64] + 36] = ceil32(_344) + 320
            _372 = mem[_338]
            mem[ceil32(_344) + mem[64] + 324] = mem[_338]
            s = 0
            while s < _372:
                mem[s + ceil32(_344) + mem[64] + 356] = mem[_338 + s + 32]
                _326 = mem[96]
                s = s + 32
                continue 
            if ceil32(_372) > _372:
                mem[ceil32(_344) + mem[64] + _372 + 356] = 0
            mem[mem[64] + 68] = uint8(_281)
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = address(cd[68])
            mem[mem[64] + 196] = _340
            mem[mem[64] + 228] = _342
            require cd[164] < 2
            mem[mem[64] + 260] = cd[164]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xcf3dc76b with:
                 gas gas_remaining wei
                args 288, ceil32(_344) + 320, _281 << 248, msg.sender, address(this.address), address(cd[68]), _340, _342, cd[164], mem[mem[64] + 292 len _344 + 32], 0, mem[mem[64] + _344 + 356 len ceil32(_372) + ceil32(_344) - _344]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 5
        uint256(sub_d91959c9[address(cd[68])])++
        mem[0] = sha3(address(cd[68]), 5)
        address(sub_d91959c9[address(cd[68])][uint256(sub_d91959c9[address(cd[68])])]) = address(create.new_address)
        mem[mem[64]] = address(create.new_address)
        emit VestingTokenCreated(address(create.new_address), address(cd[68]));
        _326 = mem[96]
        idx = idx + 1
        continue 
}



}
