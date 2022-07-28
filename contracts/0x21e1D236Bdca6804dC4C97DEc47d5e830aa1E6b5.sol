contract main {




// =====================  Runtime code  =====================


#
#  - sub_bdd5953e(?)
#
const getBalance = eth.balance(this.address)


address owner;
uint256 stor1;
address sub_b8d246beAddress;
address sub_cbf8d309Address;
address sub_c4e5ce42Address;
address sub_60b135f6Address;
address sub_9c3e0d6aAddress;
uint256 sub_0724d0ab;
uint256 sub_5adc19c7;
uint256 saleFee;
uint256 sub_14551ca8;
uint256 sub_f26713ee;
uint256 sub_1c00211a;
uint256 sub_ba1e5747;

function sub_0724d0ab(?) {
    return sub_0724d0ab
}

function sub_14551ca8(?) {
    return sub_14551ca8
}

function saleFee() {
    return saleFee
}

function sub_1c00211a(?) {
    return sub_1c00211a
}

function sub_5adc19c7(?) {
    return sub_5adc19c7
}

function sub_60b135f6(?) {
    return sub_60b135f6Address
}

function owner() {
    return owner
}

function sub_9c3e0d6a(?) {
    return sub_9c3e0d6aAddress
}

function sub_b8d246be(?) {
    return sub_b8d246beAddress
}

function sub_ba1e5747(?) {
    return sub_ba1e5747
}

function sub_c4e5ce42(?) {
    return sub_c4e5ce42Address
}

function sub_cbf8d309(?) {
    return sub_cbf8d309Address
}

function sub_f26713ee(?) {
    return sub_f26713ee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_a852c18b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9c3e0d6aAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only moderator is allowed to do this operation'
    if sub_b8d246beAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New FyRise NFT Contract address cannot be same with previous address'
    sub_b8d246beAddress = address(arg1)
}

function sub_d5d6a4ca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_cbf8d309Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only benificiary One can do this operation'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New address cannot be null or same as previous address'
    if sub_cbf8d309Address == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New address cannot be null or same as previous address'
    sub_cbf8d309Address = address(arg1)
}

function sub_f6d76bef(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_c4e5ce42Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only benificiary two can do this operation'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New address cannot be null or same as previous address'
    if sub_c4e5ce42Address == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New address cannot be null or same as previous address'
    sub_c4e5ce42Address = address(arg1)
}

function sub_4081725e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_60b135f6Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only benificiary three can do this operation'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New address cannot be null or same as previous address'
    if sub_60b135f6Address == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New address cannot be null or same as previous address'
    sub_60b135f6Address = address(arg1)
}

function sub_d7fd1ed7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9c3e0d6aAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only moderator is allowed to do this operation'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New address cannot be null or same as previous address'
    if sub_9c3e0d6aAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New address cannot be null or same as previous address'
    sub_9c3e0d6aAddress = address(arg1)
}

function withdraw() {
    if sub_cbf8d309Address != msg.sender:
        if sub_c4e5ce42Address != msg.sender:
            if sub_60b135f6Address != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only benificiaries are allowed for this operation'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if eth.balance(this.address) and sub_f26713ee > -1 / eth.balance(this.address):
        revert with 0, 17
    if not sub_14551ca8:
        revert with 0, 18
    if eth.balance(this.address) and sub_ba1e5747 > -1 / eth.balance(this.address):
        revert with 0, 17
    if not sub_14551ca8:
        revert with 0, 18
    call sub_cbf8d309Address with:
       value eth.balance(this.address) * sub_f26713ee / sub_14551ca8 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_c4e5ce42Address with:
       value eth.balance(this.address) * sub_f26713ee / sub_14551ca8 wei
         gas 2300 * is_zero(value) wei
    call sub_60b135f6Address with:
       value eth.balance(this.address) * sub_ba1e5747 / sub_14551ca8 wei
         gas 2300 * is_zero(value) wei
    stor1 = 1
}

function buyNft(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(sub_b8d246beAddress)
    staticcall sub_b8d246beAddress.isForSale(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NFT is not for sale at the moment'
    mem[ceil32(return_data.size) + 96] = 0x41f63bfd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(sub_b8d246beAddress)
    staticcall sub_b8d246beAddress.getNft(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 352
    if not bool((2 * ceil32(return_data.size)) + 448 <= test266151307()):
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + 448
    _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 353 < 352 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 449 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 449
    mem[(2 * ceil32(return_data.size)) + 448] = _13
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + _12 + _13 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 480 len ceil32(_13)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + _12 + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 448
        _221 = mem[ceil32(return_data.size) + _10 + 128]
        require mem[ceil32(return_data.size) + _10 + 128] <= test266151307()
        require ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
        _223 = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96]
        if mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96] > test266151307():
            revert with 0, 65
        _225 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 1
        mem[_225] = _223
        require _10 + _221 + _223 + 32 <= return_data.size
        mem[_225 + 32 len ceil32(_223)] = mem[ceil32(return_data.size) + _10 + _221 + 128 len ceil32(_223)]
        if ceil32(_223) <= _223:
            mem[(2 * ceil32(return_data.size)) + 128] = _225
            mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _10 + 160]
            _428 = mem[ceil32(return_data.size) + _10 + 192]
            require mem[ceil32(return_data.size) + _10 + 192] <= test266151307()
            require ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 127 < ceil32(return_data.size) + return_data.size + 96
            _435 = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96]
            if mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96] > test266151307():
                revert with 0, 65
            _439 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1
            mem[_439] = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96]
            require _10 + _428 + _435 + 32 <= return_data.size
            mem[_439 + 32 len ceil32(_435)] = mem[ceil32(return_data.size) + _10 + _428 + 128 len ceil32(_435)]
            if ceil32(_435) <= _435:
                mem[(2 * ceil32(return_data.size)) + 192] = _439
                require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _10 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 288]
                mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 320]
                require mem[ceil32(return_data.size) + _10 + 352] == bool(mem[ceil32(return_data.size) + _10 + 352])
                mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 352]
                mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 384]
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _10 + 416]
                _675 = mem[(2 * ceil32(return_data.size)) + 320]
                _676 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 320] != msg.value:
                    revert with 0, 'Incorrect amount of Matic sent'
                if mem[(2 * ceil32(return_data.size)) + 320] < mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if sub_0724d0ab > -2:
                    revert with 0, 17
                sub_0724d0ab++
                if sub_5adc19c7 > !mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                sub_5adc19c7 += mem[(2 * ceil32(return_data.size)) + 320]
                if mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256] and saleFee > -1 / mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not sub_14551ca8:
                    revert with 0, 18
                if msg.value < (mem[(2 * ceil32(return_data.size)) + 320] * saleFee) - (mem[(2 * ceil32(return_data.size)) + 256] * saleFee) / sub_14551ca8:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_b8d246beAddress)
                staticcall sub_b8d246beAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _739 = mem[_731]
                require mem[_731] == mem[_731 + 12 len 20]
                if msg.sender == mem[_731 + 12 len 20]:
                    revert with 0, 'Already owned'
                mem[mem[64] + 4] = mem[_731 + 12 len 20]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.0xba9826a7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_739) with:
                   value msg.value - ((_675 * saleFee) - (_676 * saleFee) / sub_14551ca8) wei
                     gas 2300 * is_zero(value) wei
            else:
                mem[_439 + _435 + 32] = 0
                mem[(2 * ceil32(return_data.size)) + 192] = _439
                require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _10 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 288]
                mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 320]
                require mem[ceil32(return_data.size) + _10 + 352] == bool(mem[ceil32(return_data.size) + _10 + 352])
                mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 352]
                mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 384]
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _10 + 416]
                _692 = mem[(2 * ceil32(return_data.size)) + 320]
                _693 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 320] != msg.value:
                    revert with 0, 'Incorrect amount of Matic sent'
                if mem[(2 * ceil32(return_data.size)) + 320] < mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if sub_0724d0ab > -2:
                    revert with 0, 17
                sub_0724d0ab++
                if sub_5adc19c7 > !mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                sub_5adc19c7 += mem[(2 * ceil32(return_data.size)) + 320]
                if mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256] and saleFee > -1 / mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not sub_14551ca8:
                    revert with 0, 18
                if msg.value < (mem[(2 * ceil32(return_data.size)) + 320] * saleFee) - (mem[(2 * ceil32(return_data.size)) + 256] * saleFee) / sub_14551ca8:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_b8d246beAddress)
                staticcall sub_b8d246beAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _735 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _743 = mem[_735]
                require mem[_735] == mem[_735 + 12 len 20]
                if msg.sender == mem[_735 + 12 len 20]:
                    revert with 0, 'Already owned'
                mem[mem[64] + 4] = mem[_735 + 12 len 20]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.0xba9826a7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_743) with:
                   value msg.value - ((_692 * saleFee) - (_693 * saleFee) / sub_14551ca8) wei
                     gas 2300 * is_zero(value) wei
        else:
            mem[_225 + _223 + 32] = 0
            mem[(2 * ceil32(return_data.size)) + 128] = _225
            mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _10 + 160]
            _432 = mem[ceil32(return_data.size) + _10 + 192]
            require mem[ceil32(return_data.size) + _10 + 192] <= test266151307()
            require ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 127 < ceil32(return_data.size) + return_data.size + 96
            _437 = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96]
            if mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96] > test266151307():
                revert with 0, 65
            _441 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1
            mem[_441] = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96]
            require _10 + _432 + _437 + 32 <= return_data.size
            mem[_441 + 32 len ceil32(_437)] = mem[ceil32(return_data.size) + _10 + _432 + 128 len ceil32(_437)]
            if ceil32(_437) <= _437:
                mem[(2 * ceil32(return_data.size)) + 192] = _441
                require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _10 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 288]
                mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 320]
                require mem[ceil32(return_data.size) + _10 + 352] == bool(mem[ceil32(return_data.size) + _10 + 352])
                mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 352]
                mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 384]
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _10 + 416]
                _679 = mem[(2 * ceil32(return_data.size)) + 320]
                _680 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 320] != msg.value:
                    revert with 0, 'Incorrect amount of Matic sent'
                if mem[(2 * ceil32(return_data.size)) + 320] < mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if sub_0724d0ab > -2:
                    revert with 0, 17
                sub_0724d0ab++
                if sub_5adc19c7 > !mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                sub_5adc19c7 += mem[(2 * ceil32(return_data.size)) + 320]
                if mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256] and saleFee > -1 / mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not sub_14551ca8:
                    revert with 0, 18
                if msg.value < (mem[(2 * ceil32(return_data.size)) + 320] * saleFee) - (mem[(2 * ceil32(return_data.size)) + 256] * saleFee) / sub_14551ca8:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_b8d246beAddress)
                staticcall sub_b8d246beAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _740 = mem[_732]
                require mem[_732] == mem[_732 + 12 len 20]
                if msg.sender == mem[_732 + 12 len 20]:
                    revert with 0, 'Already owned'
                mem[mem[64] + 4] = mem[_732 + 12 len 20]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.0xba9826a7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_740) with:
                   value msg.value - ((_679 * saleFee) - (_680 * saleFee) / sub_14551ca8) wei
                     gas 2300 * is_zero(value) wei
            else:
                mem[_441 + _437 + 32] = 0
                mem[(2 * ceil32(return_data.size)) + 192] = _441
                require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _10 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 288]
                mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 320]
                require mem[ceil32(return_data.size) + _10 + 352] == bool(mem[ceil32(return_data.size) + _10 + 352])
                mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 352]
                mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 384]
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _10 + 416]
                _695 = mem[(2 * ceil32(return_data.size)) + 320]
                _696 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 320] != msg.value:
                    revert with 0, 'Incorrect amount of Matic sent'
                if mem[(2 * ceil32(return_data.size)) + 320] < mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if sub_0724d0ab > -2:
                    revert with 0, 17
                sub_0724d0ab++
                if sub_5adc19c7 > !mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                sub_5adc19c7 += mem[(2 * ceil32(return_data.size)) + 320]
                if mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256] and saleFee > -1 / mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not sub_14551ca8:
                    revert with 0, 18
                if msg.value < (mem[(2 * ceil32(return_data.size)) + 320] * saleFee) - (mem[(2 * ceil32(return_data.size)) + 256] * saleFee) / sub_14551ca8:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_b8d246beAddress)
                staticcall sub_b8d246beAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _736 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _744 = mem[_736]
                require mem[_736] == mem[_736 + 12 len 20]
                if msg.sender == mem[_736 + 12 len 20]:
                    revert with 0, 'Already owned'
                mem[mem[64] + 4] = mem[_736 + 12 len 20]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.0xba9826a7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_744) with:
                   value msg.value - ((_695 * saleFee) - (_696 * saleFee) / sub_14551ca8) wei
                     gas 2300 * is_zero(value) wei
    else:
        mem[(2 * ceil32(return_data.size)) + _13 + 480] = 0
        mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 448
        _222 = mem[ceil32(return_data.size) + _10 + 128]
        require mem[ceil32(return_data.size) + _10 + 128] <= test266151307()
        require ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
        _224 = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96]
        if mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96] > test266151307():
            revert with 0, 65
        _226 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 128] + 96])) + 1
        mem[_226] = _224
        require _10 + _222 + _224 + 32 <= return_data.size
        mem[_226 + 32 len ceil32(_224)] = mem[ceil32(return_data.size) + _10 + _222 + 128 len ceil32(_224)]
        if ceil32(_224) <= _224:
            mem[(2 * ceil32(return_data.size)) + 128] = _226
            mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _10 + 160]
            _430 = mem[ceil32(return_data.size) + _10 + 192]
            require mem[ceil32(return_data.size) + _10 + 192] <= test266151307()
            require ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 127 < ceil32(return_data.size) + return_data.size + 96
            _436 = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96]
            if mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96] > test266151307():
                revert with 0, 65
            _440 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1
            mem[_440] = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96]
            require _10 + _430 + _436 + 32 <= return_data.size
            mem[_440 + 32 len ceil32(_436)] = mem[ceil32(return_data.size) + _10 + _430 + 128 len ceil32(_436)]
            if ceil32(_436) <= _436:
                mem[(2 * ceil32(return_data.size)) + 192] = _440
                require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _10 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 288]
                mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 320]
                require mem[ceil32(return_data.size) + _10 + 352] == bool(mem[ceil32(return_data.size) + _10 + 352])
                mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 352]
                mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 384]
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _10 + 416]
                _683 = mem[(2 * ceil32(return_data.size)) + 320]
                _684 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 320] != msg.value:
                    revert with 0, 'Incorrect amount of Matic sent'
                if mem[(2 * ceil32(return_data.size)) + 320] < mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if sub_0724d0ab > -2:
                    revert with 0, 17
                sub_0724d0ab++
                if sub_5adc19c7 > !mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                sub_5adc19c7 += mem[(2 * ceil32(return_data.size)) + 320]
                if mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256] and saleFee > -1 / mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not sub_14551ca8:
                    revert with 0, 18
                if msg.value < (mem[(2 * ceil32(return_data.size)) + 320] * saleFee) - (mem[(2 * ceil32(return_data.size)) + 256] * saleFee) / sub_14551ca8:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_b8d246beAddress)
                staticcall sub_b8d246beAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _741 = mem[_733]
                require mem[_733] == mem[_733 + 12 len 20]
                if msg.sender == mem[_733 + 12 len 20]:
                    revert with 0, 'Already owned'
                mem[mem[64] + 4] = mem[_733 + 12 len 20]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.0xba9826a7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_741) with:
                   value msg.value - ((_683 * saleFee) - (_684 * saleFee) / sub_14551ca8) wei
                     gas 2300 * is_zero(value) wei
            else:
                mem[_440 + _436 + 32] = 0
                mem[(2 * ceil32(return_data.size)) + 192] = _440
                require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _10 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 288]
                mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 320]
                require mem[ceil32(return_data.size) + _10 + 352] == bool(mem[ceil32(return_data.size) + _10 + 352])
                mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 352]
                mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 384]
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _10 + 416]
                _698 = mem[(2 * ceil32(return_data.size)) + 320]
                _699 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 320] != msg.value:
                    revert with 0, 'Incorrect amount of Matic sent'
                if mem[(2 * ceil32(return_data.size)) + 320] < mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if sub_0724d0ab > -2:
                    revert with 0, 17
                sub_0724d0ab++
                if sub_5adc19c7 > !mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                sub_5adc19c7 += mem[(2 * ceil32(return_data.size)) + 320]
                if mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256] and saleFee > -1 / mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not sub_14551ca8:
                    revert with 0, 18
                if msg.value < (mem[(2 * ceil32(return_data.size)) + 320] * saleFee) - (mem[(2 * ceil32(return_data.size)) + 256] * saleFee) / sub_14551ca8:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_b8d246beAddress)
                staticcall sub_b8d246beAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _737 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _745 = mem[_737]
                require mem[_737] == mem[_737 + 12 len 20]
                if msg.sender == mem[_737 + 12 len 20]:
                    revert with 0, 'Already owned'
                mem[mem[64] + 4] = mem[_737 + 12 len 20]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.0xba9826a7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_745) with:
                   value msg.value - ((_698 * saleFee) - (_699 * saleFee) / sub_14551ca8) wei
                     gas 2300 * is_zero(value) wei
        else:
            mem[_226 + _224 + 32] = 0
            mem[(2 * ceil32(return_data.size)) + 128] = _226
            mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _10 + 160]
            _434 = mem[ceil32(return_data.size) + _10 + 192]
            require mem[ceil32(return_data.size) + _10 + 192] <= test266151307()
            require ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 127 < ceil32(return_data.size) + return_data.size + 96
            _438 = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96]
            if mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96] > test266151307():
                revert with 0, 65
            _442 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96])) + 1
            mem[_442] = mem[ceil32(return_data.size) + _10 + mem[ceil32(return_data.size) + _10 + 192] + 96]
            require _10 + _434 + _438 + 32 <= return_data.size
            mem[_442 + 32 len ceil32(_438)] = mem[ceil32(return_data.size) + _10 + _434 + 128 len ceil32(_438)]
            if ceil32(_438) <= _438:
                mem[(2 * ceil32(return_data.size)) + 192] = _442
                require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _10 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 288]
                mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 320]
                require mem[ceil32(return_data.size) + _10 + 352] == bool(mem[ceil32(return_data.size) + _10 + 352])
                mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 352]
                mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 384]
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _10 + 416]
                _687 = mem[(2 * ceil32(return_data.size)) + 320]
                _688 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 320] != msg.value:
                    revert with 0, 'Incorrect amount of Matic sent'
                if mem[(2 * ceil32(return_data.size)) + 320] < mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if sub_0724d0ab > -2:
                    revert with 0, 17
                sub_0724d0ab++
                if sub_5adc19c7 > !mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                sub_5adc19c7 += mem[(2 * ceil32(return_data.size)) + 320]
                if mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256] and saleFee > -1 / mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not sub_14551ca8:
                    revert with 0, 18
                if msg.value < (mem[(2 * ceil32(return_data.size)) + 320] * saleFee) - (mem[(2 * ceil32(return_data.size)) + 256] * saleFee) / sub_14551ca8:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_b8d246beAddress)
                staticcall sub_b8d246beAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _742 = mem[_734]
                require mem[_734] == mem[_734 + 12 len 20]
                if msg.sender == mem[_734 + 12 len 20]:
                    revert with 0, 'Already owned'
                mem[mem[64] + 4] = mem[_734 + 12 len 20]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.0xba9826a7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_742) with:
                   value msg.value - ((_687 * saleFee) - (_688 * saleFee) / sub_14551ca8) wei
                     gas 2300 * is_zero(value) wei
            else:
                mem[_442 + _438 + 32] = 0
                mem[(2 * ceil32(return_data.size)) + 192] = _442
                require mem[ceil32(return_data.size) + _10 + 224] == mem[ceil32(return_data.size) + _10 + 236 len 20]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _10 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _10 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _10 + 288]
                mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _10 + 320]
                require mem[ceil32(return_data.size) + _10 + 352] == bool(mem[ceil32(return_data.size) + _10 + 352])
                mem[(2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + _10 + 352]
                mem[(2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + _10 + 384]
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + _10 + 416]
                _701 = mem[(2 * ceil32(return_data.size)) + 320]
                _702 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 320] != msg.value:
                    revert with 0, 'Incorrect amount of Matic sent'
                if mem[(2 * ceil32(return_data.size)) + 320] < mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if sub_0724d0ab > -2:
                    revert with 0, 17
                sub_0724d0ab++
                if sub_5adc19c7 > !mem[(2 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                sub_5adc19c7 += mem[(2 * ceil32(return_data.size)) + 320]
                if mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256] and saleFee > -1 / mem[(2 * ceil32(return_data.size)) + 320] - mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not sub_14551ca8:
                    revert with 0, 18
                if msg.value < (mem[(2 * ceil32(return_data.size)) + 320] * saleFee) - (mem[(2 * ceil32(return_data.size)) + 256] * saleFee) / sub_14551ca8:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_b8d246beAddress)
                staticcall sub_b8d246beAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _738 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _746 = mem[_738]
                require mem[_738] == mem[_738 + 12 len 20]
                if msg.sender == mem[_738 + 12 len 20]:
                    revert with 0, 'Already owned'
                mem[mem[64] + 4] = mem[_738 + 12 len 20]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_b8d246beAddress)
                call sub_b8d246beAddress.0xba9826a7 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_746) with:
                   value msg.value - ((_701 * saleFee) - (_702 * saleFee) / sub_14551ca8) wei
                     gas 2300 * is_zero(value) wei
}



}
