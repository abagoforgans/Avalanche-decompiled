contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
array of address stor2;
array of uint256 stor3;
array of struct stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;

function owner() {
    return owner
}

function sub_bb8e21c0(?) {
    return stor3.length
}

function sub_d1a76365(?) {
    return stor2.length
}

function _fallback() payable {
    revert
}

function sub_a6d9bf74(?) {
    if stor1.length < 1:
        revert with 0, 17
    return (stor1.length - 1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8f1585f1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3.length = arg1
}

function sub_97151a74(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2.length = arg1
}

function withdrawBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function cancelOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor4[arg1].field_256) != msg.sender:
        revert with 0, 'Sender is not offer initiator'
    if uint8(stor4[arg1].field_1280) > 3:
        revert with 0, 33
    if uint8(stor4[arg1].field_1280):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Offer status is not pending (canceled or fulfilled)'
    uint8(stor4[arg1].field_1280) = 1
    uint256(stor4[arg1].field_1792) = block.timestamp
    emit 0xafda6c80: uint256(stor4[arg1].field_0), address(stor4[arg1].field_256), address(stor4[arg1].field_512)
}

function sub_4b9969b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint256(stor5[address(arg1)].field_0):
        mem[128] = uint256(stor5[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor5[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(stor5[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=uint256(stor5[address(arg1)].field_0), data=mem[128 len 32 * uint256(stor5[address(arg1)].field_0)])
    mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128] = 32
    mem[(32 * uint256(stor5[address(arg1)].field_0)) + 160] = uint256(stor5[address(arg1)].field_0)
    mem[(32 * uint256(stor5[address(arg1)].field_0)) + 192 len 32 * uint256(stor5[address(arg1)].field_0)] = mem[128 len 32 * uint256(stor5[address(arg1)].field_0)]
    return memory
      from (32 * uint256(stor5[address(arg1)].field_0)) + 128
       len (96 * uint256(stor5[address(arg1)].field_0)) + 64
}

function sub_128cf548(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (('cd', 36).length << 7) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (('cd', 68).length << 7) + 36 <= calldata.size
    if msg.value < stor2.length:
        revert with 0, 'Invalid create offer fee amount'
    uint8(stor4[stor1.length].field_1280) = 0
    uint256(stor4[stor1.length].field_0) = stor1.length
    address(stor4[stor1.length].field_256) = msg.sender
    address(stor4[stor1.length].field_512) = address(cd[4])
    uint256(stor4[stor1.length].field_1536) = block.timestamp
    uint256(stor4[stor1.length].field_2048) = cd[100]
    idx = 0
    while idx < ('cd', 36).length:
        mem[32] = 4
        uint256(stor4[stor1.length].field_768)++
        mem[0] = sha3(stor1.length, 4) + 3
        require cd[((128 * idx) + cd[36] + 36)] == address(cd[((128 * idx) + cd[36] + 36)])
        address(stor[('array', 3, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor4', 4))) + (4 * uint256(stor4[stor1.length].field_768))].field_0) = address(cd[((128 * idx) + cd[36] + 36)])
        uint256(stor[('array', 3, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor4', 4))) + (4 * uint256(stor4[stor1.length].field_768))].field_256) = cd[((128 * idx) + cd[36] + 68)]
        require cd[((128 * idx) + cd[36] + 100)] < 3
        uint8(stor[('array', 3, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor4', 4))) + (4 * uint256(stor4[stor1.length].field_768))].field_512) = uint8(cd[((128 * idx) + cd[36] + 100)])
        uint256(stor[('array', 3, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor4', 4))) + (4 * uint256(stor4[stor1.length].field_768))].field_768) = cd[((128 * idx) + cd[36] + 132)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        mem[32] = 4
        uint256(stor4[stor1.length].field_1024)++
        mem[0] = sha3(stor1.length, 4) + 4
        require cd[((128 * idx) + cd[68] + 36)] == address(cd[((128 * idx) + cd[68] + 36)])
        address(stor[('array', 4, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor4', 4))) + (4 * uint256(stor4[stor1.length].field_1024))].field_0) = address(cd[((128 * idx) + cd[68] + 36)])
        uint256(stor[('array', 4, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor4', 4))) + (4 * uint256(stor4[stor1.length].field_1024))].field_256) = cd[((128 * idx) + cd[68] + 68)]
        require cd[((128 * idx) + cd[68] + 100)] < 3
        uint8(stor[('array', 4, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor4', 4))) + (4 * uint256(stor4[stor1.length].field_1024))].field_512) = uint8(cd[((128 * idx) + cd[68] + 100)])
        uint256(stor[('array', 4, ('map', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor4', 4))) + (4 * uint256(stor4[stor1.length].field_1024))].field_768) = cd[((128 * idx) + cd[68] + 132)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    uint256(stor5[address(msg.sender)].field_0)++
    uint256(stor5[address(msg.sender)][uint256(stor5[address(msg.sender)].field_0)].field_0) = stor1.length
    uint256(stor5[address(cd[4])].field_0)++
    uint256(stor5[address(cd[4])][uint256(stor5[address(cd[4])].field_0)].field_0) = stor1.length
    stor1.length++
    emit 0xc15c04e4: stor1.length, msg.sender, address(cd[4])
}

function acceptOffer(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 4
    if not address(stor4[arg1].field_512):
        if uint8(stor4[arg1].field_1280) > 3:
            revert with 0, 33
        if uint8(stor4[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Offer status is not pending (canceled or fulfilled)'
        if not uint256(stor4[arg1].field_2048):
            if msg.value < stor3.length:
                revert with 0, 'Invalid accept offer fee amount'
            uint8(stor4[arg1].field_1280) = 2
            uint256(stor4[arg1].field_1792) = block.timestamp
            idx = 0
            while idx < uint256(stor4[arg1].field_768):
                if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                    revert with 0, 33
                if idx >= uint256(stor4[arg1].field_768):
                    revert with 0, 50
                if not uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512):
                    mem[0] = sha3(arg1, 4) + 3
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(stor4[arg1].field_256)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                    call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x42842e0e with:
                         gas gas_remaining wei
                        args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                        revert with 0, 33
                    if idx >= uint256(stor4[arg1].field_768):
                        revert with 0, 50
                    mem[0] = sha3(arg1, 4) + 3
                    if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 1:
                        mem[mem[64] + 4] = address(stor4[arg1].field_256)
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                        call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_255] == bool(mem[_255])
                    else:
                        if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                            revert with 0, 33
                        if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 2:
                            if idx >= uint256(stor4[arg1].field_768):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 4) + 3
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor4[arg1].field_256)
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                            mem[mem[64] + 100] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                            call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256), uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768), 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < uint256(stor4[arg1].field_1024):
                if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                    revert with 0, 33
                if idx >= uint256(stor4[arg1].field_1024):
                    revert with 0, 50
                if not uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512):
                    mem[0] = sha3(arg1, 4) + 4
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor4[arg1].field_256)
                    mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                    call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x42842e0e with:
                         gas gas_remaining wei
                        args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                        revert with 0, 33
                    if idx >= uint256(stor4[arg1].field_1024):
                        revert with 0, 50
                    mem[0] = sha3(arg1, 4) + 4
                    if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 1:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor4[arg1].field_256)
                        mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                        call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_381] == bool(mem[_381])
                    else:
                        if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                            revert with 0, 33
                        if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 2:
                            if idx >= uint256(stor4[arg1].field_1024):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 4) + 4
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor4[arg1].field_256)
                            mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                            mem[mem[64] + 100] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                            call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768), 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if block.timestamp > uint256(stor4[arg1].field_2048):
                revert with 0, 'Offer expired'
            if msg.value < stor3.length:
                revert with 0, 'Invalid accept offer fee amount'
            uint8(stor4[arg1].field_1280) = 2
            uint256(stor4[arg1].field_1792) = block.timestamp
            idx = 0
            while idx < uint256(stor4[arg1].field_768):
                if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                    revert with 0, 33
                if idx >= uint256(stor4[arg1].field_768):
                    revert with 0, 50
                if not uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512):
                    mem[0] = sha3(arg1, 4) + 3
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(stor4[arg1].field_256)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                    call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x42842e0e with:
                         gas gas_remaining wei
                        args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                        revert with 0, 33
                    if idx >= uint256(stor4[arg1].field_768):
                        revert with 0, 50
                    mem[0] = sha3(arg1, 4) + 3
                    if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 1:
                        mem[mem[64] + 4] = address(stor4[arg1].field_256)
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                        call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_259] == bool(mem[_259])
                    else:
                        if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                            revert with 0, 33
                        if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 2:
                            if idx >= uint256(stor4[arg1].field_768):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 4) + 3
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor4[arg1].field_256)
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                            mem[mem[64] + 100] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                            call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256), uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768), 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < uint256(stor4[arg1].field_1024):
                if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                    revert with 0, 33
                if idx >= uint256(stor4[arg1].field_1024):
                    revert with 0, 50
                if not uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512):
                    mem[0] = sha3(arg1, 4) + 4
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor4[arg1].field_256)
                    mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                    call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x42842e0e with:
                         gas gas_remaining wei
                        args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                        revert with 0, 33
                    if idx >= uint256(stor4[arg1].field_1024):
                        revert with 0, 50
                    mem[0] = sha3(arg1, 4) + 4
                    if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 1:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor4[arg1].field_256)
                        mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                        call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _383 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_383] == bool(mem[_383])
                    else:
                        if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                            revert with 0, 33
                        if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 2:
                            if idx >= uint256(stor4[arg1].field_1024):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 4) + 4
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor4[arg1].field_256)
                            mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                            mem[mem[64] + 100] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                            call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768), 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if address(stor4[arg1].field_512) != msg.sender:
            revert with 0, 'Sender is not offer participant'
        if uint8(stor4[arg1].field_1280) > 3:
            revert with 0, 33
        if uint8(stor4[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Offer status is not pending (canceled or fulfilled)'
        if not uint256(stor4[arg1].field_2048):
            if msg.value < stor3.length:
                revert with 0, 'Invalid accept offer fee amount'
            uint8(stor4[arg1].field_1280) = 2
            uint256(stor4[arg1].field_1792) = block.timestamp
            idx = 0
            while idx < uint256(stor4[arg1].field_768):
                if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                    revert with 0, 33
                if idx >= uint256(stor4[arg1].field_768):
                    revert with 0, 50
                if not uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512):
                    mem[0] = sha3(arg1, 4) + 3
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(stor4[arg1].field_256)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                    call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x42842e0e with:
                         gas gas_remaining wei
                        args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                        revert with 0, 33
                    if idx >= uint256(stor4[arg1].field_768):
                        revert with 0, 50
                    mem[0] = sha3(arg1, 4) + 3
                    if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 1:
                        mem[mem[64] + 4] = address(stor4[arg1].field_256)
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                        call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_263] == bool(mem[_263])
                    else:
                        if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                            revert with 0, 33
                        if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 2:
                            if idx >= uint256(stor4[arg1].field_768):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 4) + 3
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor4[arg1].field_256)
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                            mem[mem[64] + 100] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                            call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256), uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768), 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < uint256(stor4[arg1].field_1024):
                if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                    revert with 0, 33
                if idx >= uint256(stor4[arg1].field_1024):
                    revert with 0, 50
                if not uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512):
                    mem[0] = sha3(arg1, 4) + 4
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor4[arg1].field_256)
                    mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                    call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x42842e0e with:
                         gas gas_remaining wei
                        args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                        revert with 0, 33
                    if idx >= uint256(stor4[arg1].field_1024):
                        revert with 0, 50
                    mem[0] = sha3(arg1, 4) + 4
                    if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 1:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor4[arg1].field_256)
                        mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                        call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_385] == bool(mem[_385])
                    else:
                        if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                            revert with 0, 33
                        if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 2:
                            if idx >= uint256(stor4[arg1].field_1024):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 4) + 4
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor4[arg1].field_256)
                            mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                            mem[mem[64] + 100] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                            call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768), 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if block.timestamp > uint256(stor4[arg1].field_2048):
                revert with 0, 'Offer expired'
            if msg.value < stor3.length:
                revert with 0, 'Invalid accept offer fee amount'
            uint8(stor4[arg1].field_1280) = 2
            uint256(stor4[arg1].field_1792) = block.timestamp
            idx = 0
            while idx < uint256(stor4[arg1].field_768):
                if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                    revert with 0, 33
                if idx >= uint256(stor4[arg1].field_768):
                    revert with 0, 50
                if not uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512):
                    mem[0] = sha3(arg1, 4) + 3
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(stor4[arg1].field_256)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                    call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x42842e0e with:
                         gas gas_remaining wei
                        args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                        revert with 0, 33
                    if idx >= uint256(stor4[arg1].field_768):
                        revert with 0, 50
                    mem[0] = sha3(arg1, 4) + 3
                    if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 1:
                        mem[mem[64] + 4] = address(stor4[arg1].field_256)
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                        call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_267] == bool(mem[_267])
                    else:
                        if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                            revert with 0, 33
                        if uint8(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 2:
                            if idx >= uint256(stor4[arg1].field_768):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 4) + 3
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor4[arg1].field_256)
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                            mem[mem[64] + 100] = uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                            call address(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor4[arg1].field_256), msg.sender, uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256), uint256(stor[(4 * idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768), 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < uint256(stor4[arg1].field_1024):
                if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                    revert with 0, 33
                if idx >= uint256(stor4[arg1].field_1024):
                    revert with 0, 50
                if not uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512):
                    mem[0] = sha3(arg1, 4) + 4
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(stor4[arg1].field_256)
                    mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                    call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x42842e0e with:
                         gas gas_remaining wei
                        args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                        revert with 0, 33
                    if idx >= uint256(stor4[arg1].field_1024):
                        revert with 0, 50
                    mem[0] = sha3(arg1, 4) + 4
                    if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 1:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(stor4[arg1].field_256)
                        mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                        call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_387] == bool(mem[_387])
                    else:
                        if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) > 2:
                            revert with 0, 33
                        if uint8(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_512) == 2:
                            if idx >= uint256(stor4[arg1].field_1024):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 4) + 4
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor4[arg1].field_256)
                            mem[mem[64] + 68] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256)
                            mem[mem[64] + 100] = uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768)
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0))
                            call address(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor4[arg1].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_256), uint256(stor[(4 * idx) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_768), 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    emit 0x4e0e306d: uint256(stor4[arg1].field_0), address(stor4[arg1].field_256), msg.sender
}

function sub_126eaea1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
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
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            _161 = sha3(mem[(32 * idx) + 128], 4)
            _162 = mem[64]
            mem[64] = mem[64] + 288
            mem[_162] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
            mem[_162 + 32] = stor1[_161]
            mem[_162 + 64] = stor2[_161]
            _163 = mem[64]
            mem[64] = mem[64] + (32 * stor3[_161]) + 32
            mem[_163] = stor3[_161]
            t = _163 + 32
            s = 0
            while s < stor3[_161]:
                mem[0] = _161 + 3
                _237 = mem[64]
                mem[64] = mem[64] + 128
                mem[_237] = address(stor[sha3(_161 + 3) + (4 * s)])
                mem[_237 + 32] = uint256(stor[sha3(_161 + 3) + (4 * s) + 1])
                if uint8(stor[sha3(_161 + 3) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_237 + 64] = uint8(stor[sha3(_161 + 3) + (4 * s) + 2])
                mem[_237 + 96] = uint256(stor[sha3(_161 + 3) + (4 * s) + 3])
                mem[t] = _237
                t = t + 32
                s = s + 1
                continue 
            mem[_162 + 96] = _163
            _235 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor4[_161].field_0)) + 32
            mem[_235] = uint256(stor4[_161].field_0)
            t = _235 + 32
            s = 0
            while s < uint256(stor4[_161].field_0):
                mem[0] = _161 + 4
                _343 = mem[64]
                mem[64] = mem[64] + 128
                mem[_343] = address(stor[sha3(_161 + 4) + (4 * s)])
                mem[_343 + 32] = uint256(stor[sha3(_161 + 4) + (4 * s) + 1])
                if uint8(stor[sha3(_161 + 4) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_343 + 64] = uint8(stor[sha3(_161 + 4) + (4 * s) + 2])
                mem[_343 + 96] = uint256(stor[sha3(_161 + 4) + (4 * s) + 3])
                mem[t] = _343
                t = t + 32
                s = s + 1
                continue 
            mem[_162 + 128] = _235
            if uint8(stor5[_161].field_0) > 3:
                revert with 0, 33
            mem[_162 + 160] = uint8(stor5[_161].field_0)
            mem[_162 + 192] = stor6[_161]
            mem[_162 + 224] = stor7[_161]
            mem[_162 + 256] = stor8[_161]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _162
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _159 = mem[64]
        mem[mem[64]] = 32
        _165 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + (32 * _165) + 64
        v = mem[64] + 64
        while s < _165:
            mem[v] = u + -_159 - 64
            _232 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_232 + 44 len 20]
            mem[u + 64] = mem[_232 + 76 len 20]
            _241 = mem[_232 + 96]
            mem[u + 96] = 288
            _242 = mem[_241]
            mem[u + 288] = mem[_241]
            w = 0
            x = _241 + 32
            y = u + 320
            while w < _242:
                _338 = mem[x]
                mem[y] = mem[mem[x] + 12 len 20]
                mem[y + 32] = mem[_338 + 32]
                if mem[_338 + 64] >= 3:
                    revert with 0, 33
                mem[y + 64] = mem[_338 + 64]
                mem[y + 96] = mem[_338 + 96]
                w = w + 1
                x = x + 32
                y = y + 128
                continue 
            _345 = mem[_232 + 128]
            mem[u + 128] = (128 * _242) + 320
            _353 = mem[_345]
            mem[u + (128 * _242) + 320] = mem[_345]
            idx = 0
            w = _345 + 32
            x = u + (128 * _242) + 352
            while idx < _353:
                _431 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_431 + 32]
                if mem[_431 + 64] >= 3:
                    revert with 0, 33
                mem[x + 64] = mem[_431 + 64]
                mem[x + 96] = mem[_431 + 96]
                idx = idx + 1
                w = w + 32
                x = x + 128
                continue 
            if mem[_232 + 160] >= 4:
                revert with 0, 33
            mem[u + 160] = mem[_232 + 160]
            mem[u + 192] = mem[_232 + 192]
            mem[u + 224] = mem[_232 + 224]
            mem[u + 256] = mem[_232 + 256]
            s = s + 1
            t = t + 32
            u = u + (128 * _242) + (128 * _353) + 352
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[var21002] = var21001
    if not var21003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            _350 = sha3(mem[(32 * idx) + 128], 4)
            _351 = mem[64]
            mem[64] = mem[64] + 288
            mem[_351] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
            mem[_351 + 32] = stor1[_350]
            mem[_351 + 64] = stor2[_350]
            _352 = mem[64]
            mem[64] = mem[64] + (32 * stor3[_350]) + 32
            mem[_352] = stor3[_350]
            t = _352 + 32
            s = 0
            while s < stor3[_350]:
                mem[0] = _350 + 3
                _441 = mem[64]
                mem[64] = mem[64] + 128
                mem[_441] = address(stor[sha3(_350 + 3) + (4 * s)])
                mem[_441 + 32] = uint256(stor[sha3(_350 + 3) + (4 * s) + 1])
                if uint8(stor[sha3(_350 + 3) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_441 + 64] = uint8(stor[sha3(_350 + 3) + (4 * s) + 2])
                mem[_441 + 96] = uint256(stor[sha3(_350 + 3) + (4 * s) + 3])
                mem[t] = _441
                t = t + 32
                s = s + 1
                continue 
            mem[_351 + 96] = _352
            _439 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor4[_350].field_0)) + 32
            mem[_439] = uint256(stor4[_350].field_0)
            t = _439 + 32
            s = 0
            while s < uint256(stor4[_350].field_0):
                mem[0] = _350 + 4
                _552 = mem[64]
                mem[64] = mem[64] + 128
                mem[_552] = address(stor[sha3(_350 + 4) + (4 * s)])
                mem[_552 + 32] = uint256(stor[sha3(_350 + 4) + (4 * s) + 1])
                if uint8(stor[sha3(_350 + 4) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_552 + 64] = uint8(stor[sha3(_350 + 4) + (4 * s) + 2])
                mem[_552 + 96] = uint256(stor[sha3(_350 + 4) + (4 * s) + 3])
                mem[t] = _552
                t = t + 32
                s = s + 1
                continue 
            mem[_351 + 128] = _439
            if uint8(stor5[_350].field_0) > 3:
                revert with 0, 33
            mem[_351 + 160] = uint8(stor5[_350].field_0)
            mem[_351 + 192] = stor6[_350]
            mem[_351 + 224] = stor7[_350]
            mem[_351 + 256] = stor8[_350]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _351
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _348 = mem[64]
        mem[mem[64]] = 32
        _355 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + (32 * _355) + 64
        v = mem[64] + 64
        while s < _355:
            mem[v] = u + -_348 - 64
            _436 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_436 + 44 len 20]
            mem[u + 64] = mem[_436 + 76 len 20]
            _446 = mem[_436 + 96]
            mem[u + 96] = 288
            _448 = mem[_446]
            mem[u + 288] = mem[_446]
            w = 0
            x = _446 + 32
            y = u + 320
            while w < _448:
                _547 = mem[x]
                mem[y] = mem[mem[x] + 12 len 20]
                mem[y + 32] = mem[_547 + 32]
                if mem[_547 + 64] >= 3:
                    revert with 0, 33
                mem[y + 64] = mem[_547 + 64]
                mem[y + 96] = mem[_547 + 96]
                w = w + 1
                x = x + 32
                y = y + 128
                continue 
            _559 = mem[_436 + 128]
            mem[u + 128] = (128 * _448) + 320
            _562 = mem[_559]
            mem[u + (128 * _448) + 320] = mem[_559]
            idx = 0
            w = _559 + 32
            x = u + (128 * _448) + 352
            while idx < _562:
                _646 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_646 + 32]
                if mem[_646 + 64] >= 3:
                    revert with 0, 33
                mem[x + 64] = mem[_646 + 64]
                mem[x + 96] = mem[_646 + 96]
                idx = idx + 1
                w = w + 32
                x = x + 128
                continue 
            if mem[_436 + 160] >= 4:
                revert with 0, 33
            mem[u + 160] = mem[_436 + 160]
            mem[u + 192] = mem[_436 + 192]
            mem[u + 224] = mem[_436 + 224]
            mem[u + 256] = mem[_436 + 256]
            s = s + 1
            t = t + 32
            u = u + (128 * _448) + (128 * _562) + 352
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            _556 = sha3(mem[(32 * idx) + 128], 4)
            _557 = mem[64]
            mem[64] = mem[64] + 288
            mem[_557] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
            mem[_557 + 32] = stor1[_556]
            mem[_557 + 64] = stor2[_556]
            _558 = mem[64]
            mem[64] = mem[64] + (32 * stor3[_556]) + 32
            mem[_558] = stor3[_556]
            t = _558 + 32
            s = 0
            while s < stor3[_556]:
                mem[0] = _556 + 3
                _645 = mem[64]
                mem[64] = mem[64] + 128
                mem[_645] = address(stor[sha3(_556 + 3) + (4 * s)])
                mem[_645 + 32] = uint256(stor[sha3(_556 + 3) + (4 * s) + 1])
                if uint8(stor[sha3(_556 + 3) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_645 + 64] = uint8(stor[sha3(_556 + 3) + (4 * s) + 2])
                mem[_645 + 96] = uint256(stor[sha3(_556 + 3) + (4 * s) + 3])
                mem[t] = _645
                t = t + 32
                s = s + 1
                continue 
            mem[_557 + 96] = _558
            _643 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor4[_556].field_0)) + 32
            mem[_643] = uint256(stor4[_556].field_0)
            t = _643 + 32
            s = 0
            while s < uint256(stor4[_556].field_0):
                mem[0] = _556 + 4
                _760 = mem[64]
                mem[64] = mem[64] + 128
                mem[_760] = address(stor[sha3(_556 + 4) + (4 * s)])
                mem[_760 + 32] = uint256(stor[sha3(_556 + 4) + (4 * s) + 1])
                if uint8(stor[sha3(_556 + 4) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_760 + 64] = uint8(stor[sha3(_556 + 4) + (4 * s) + 2])
                mem[_760 + 96] = uint256(stor[sha3(_556 + 4) + (4 * s) + 3])
                mem[t] = _760
                t = t + 32
                s = s + 1
                continue 
            mem[_557 + 128] = _643
            if uint8(stor5[_556].field_0) > 3:
                revert with 0, 33
            mem[_557 + 160] = uint8(stor5[_556].field_0)
            mem[_557 + 192] = stor6[_556]
            mem[_557 + 224] = stor7[_556]
            mem[_557 + 256] = stor8[_556]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _557
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _554 = mem[64]
        mem[mem[64]] = 32
        _561 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + (32 * _561) + 64
        v = mem[64] + 64
        while s < _561:
            mem[v] = u + -_554 - 64
            _640 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_640 + 44 len 20]
            mem[u + 64] = mem[_640 + 76 len 20]
            _652 = mem[_640 + 96]
            mem[u + 96] = 288
            _656 = mem[_652]
            mem[u + 288] = mem[_652]
            w = 0
            x = _652 + 32
            y = u + 320
            while w < _656:
                _755 = mem[x]
                mem[y] = mem[mem[x] + 12 len 20]
                mem[y + 32] = mem[_755 + 32]
                if mem[_755 + 64] >= 3:
                    revert with 0, 33
                mem[y + 64] = mem[_755 + 64]
                mem[y + 96] = mem[_755 + 96]
                w = w + 1
                x = x + 32
                y = y + 128
                continue 
            _767 = mem[_640 + 128]
            mem[u + 128] = (128 * _656) + 320
            _770 = mem[_767]
            mem[u + (128 * _656) + 320] = mem[_767]
            idx = 0
            w = _767 + 32
            x = u + (128 * _656) + 352
            while idx < _770:
                _854 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_854 + 32]
                if mem[_854 + 64] >= 3:
                    revert with 0, 33
                mem[x + 64] = mem[_854 + 64]
                mem[x + 96] = mem[_854 + 96]
                idx = idx + 1
                w = w + 32
                x = x + 128
                continue 
            if mem[_640 + 160] >= 4:
                revert with 0, 33
            mem[u + 160] = mem[_640 + 160]
            mem[u + 192] = mem[_640 + 192]
            mem[u + 224] = mem[_640 + 224]
            mem[u + 256] = mem[_640 + 256]
            s = s + 1
            t = t + 32
            u = u + (128 * _656) + (128 * _770) + 352
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 993
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            _764 = sha3(mem[(32 * idx) + 128], 4)
            _765 = mem[64]
            mem[64] = mem[64] + 288
            mem[_765] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
            mem[_765 + 32] = stor1[_764]
            mem[_765 + 64] = stor2[_764]
            _766 = mem[64]
            mem[64] = mem[64] + (32 * stor3[_764]) + 32
            mem[_766] = stor3[_764]
            t = _766 + 32
            s = 0
            while s < stor3[_764]:
                mem[0] = _764 + 3
                _853 = mem[64]
                mem[64] = mem[64] + 128
                mem[_853] = address(stor[sha3(_764 + 3) + (4 * s)])
                mem[_853 + 32] = uint256(stor[sha3(_764 + 3) + (4 * s) + 1])
                if uint8(stor[sha3(_764 + 3) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_853 + 64] = uint8(stor[sha3(_764 + 3) + (4 * s) + 2])
                mem[_853 + 96] = uint256(stor[sha3(_764 + 3) + (4 * s) + 3])
                mem[t] = _853
                t = t + 32
                s = s + 1
                continue 
            mem[_765 + 96] = _766
            _851 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor4[_764].field_0)) + 32
            mem[_851] = uint256(stor4[_764].field_0)
            t = _851 + 32
            s = 0
            while s < uint256(stor4[_764].field_0):
                mem[0] = _764 + 4
                _968 = mem[64]
                mem[64] = mem[64] + 128
                mem[_968] = address(stor[sha3(_764 + 4) + (4 * s)])
                mem[_968 + 32] = uint256(stor[sha3(_764 + 4) + (4 * s) + 1])
                if uint8(stor[sha3(_764 + 4) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_968 + 64] = uint8(stor[sha3(_764 + 4) + (4 * s) + 2])
                mem[_968 + 96] = uint256(stor[sha3(_764 + 4) + (4 * s) + 3])
                mem[t] = _968
                t = t + 32
                s = s + 1
                continue 
            mem[_765 + 128] = _851
            if uint8(stor5[_764].field_0) > 3:
                revert with 0, 33
            mem[_765 + 160] = uint8(stor5[_764].field_0)
            mem[_765 + 192] = stor6[_764]
            mem[_765 + 224] = stor7[_764]
            mem[_765 + 256] = stor8[_764]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _765
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _762 = mem[64]
        mem[mem[64]] = 32
        _769 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + (32 * _769) + 64
        v = mem[64] + 64
        while s < _769:
            mem[v] = u + -_762 - 64
            _848 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_848 + 44 len 20]
            mem[u + 64] = mem[_848 + 76 len 20]
            _860 = mem[_848 + 96]
            mem[u + 96] = 288
            _864 = mem[_860]
            mem[u + 288] = mem[_860]
            w = 0
            x = _860 + 32
            y = u + 320
            while w < _864:
                _963 = mem[x]
                mem[y] = mem[mem[x] + 12 len 20]
                mem[y + 32] = mem[_963 + 32]
                if mem[_963 + 64] >= 3:
                    revert with 0, 33
                mem[y + 64] = mem[_963 + 64]
                mem[y + 96] = mem[_963 + 96]
                w = w + 1
                x = x + 32
                y = y + 128
                continue 
            _975 = mem[_848 + 128]
            mem[u + 128] = (128 * _864) + 320
            _978 = mem[_975]
            mem[u + (128 * _864) + 320] = mem[_975]
            idx = 0
            w = _975 + 32
            x = u + (128 * _864) + 352
            while idx < _978:
                _1062 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1062 + 32]
                if mem[_1062 + 64] >= 3:
                    revert with 0, 33
                mem[x + 64] = mem[_1062 + 64]
                mem[x + 96] = mem[_1062 + 96]
                idx = idx + 1
                w = w + 32
                x = x + 128
                continue 
            if mem[_848 + 160] >= 4:
                revert with 0, 33
            mem[u + 160] = mem[_848 + 160]
            mem[u + 192] = mem[_848 + 192]
            mem[u + 224] = mem[_848 + 224]
            mem[u + 256] = mem[_848 + 256]
            s = s + 1
            t = t + 32
            u = u + (128 * _864) + (128 * _978) + 352
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1281
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            _972 = sha3(mem[(32 * idx) + 128], 4)
            _973 = mem[64]
            mem[64] = mem[64] + 288
            mem[_973] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
            mem[_973 + 32] = stor1[_972]
            mem[_973 + 64] = stor2[_972]
            _974 = mem[64]
            mem[64] = mem[64] + (32 * stor3[_972]) + 32
            mem[_974] = stor3[_972]
            t = _974 + 32
            s = 0
            while s < stor3[_972]:
                mem[0] = _972 + 3
                _1061 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1061] = address(stor[sha3(_972 + 3) + (4 * s)])
                mem[_1061 + 32] = uint256(stor[sha3(_972 + 3) + (4 * s) + 1])
                if uint8(stor[sha3(_972 + 3) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_1061 + 64] = uint8(stor[sha3(_972 + 3) + (4 * s) + 2])
                mem[_1061 + 96] = uint256(stor[sha3(_972 + 3) + (4 * s) + 3])
                mem[t] = _1061
                t = t + 32
                s = s + 1
                continue 
            mem[_973 + 96] = _974
            _1059 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor4[_972].field_0)) + 32
            mem[_1059] = uint256(stor4[_972].field_0)
            t = _1059 + 32
            s = 0
            while s < uint256(stor4[_972].field_0):
                mem[0] = _972 + 4
                _1176 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1176] = address(stor[sha3(_972 + 4) + (4 * s)])
                mem[_1176 + 32] = uint256(stor[sha3(_972 + 4) + (4 * s) + 1])
                if uint8(stor[sha3(_972 + 4) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_1176 + 64] = uint8(stor[sha3(_972 + 4) + (4 * s) + 2])
                mem[_1176 + 96] = uint256(stor[sha3(_972 + 4) + (4 * s) + 3])
                mem[t] = _1176
                t = t + 32
                s = s + 1
                continue 
            mem[_973 + 128] = _1059
            if uint8(stor5[_972].field_0) > 3:
                revert with 0, 33
            mem[_973 + 160] = uint8(stor5[_972].field_0)
            mem[_973 + 192] = stor6[_972]
            mem[_973 + 224] = stor7[_972]
            mem[_973 + 256] = stor8[_972]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _973
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _970 = mem[64]
        mem[mem[64]] = 32
        _977 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + (32 * _977) + 64
        v = mem[64] + 64
        while s < _977:
            mem[v] = u + -_970 - 64
            _1056 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_1056 + 44 len 20]
            mem[u + 64] = mem[_1056 + 76 len 20]
            _1068 = mem[_1056 + 96]
            mem[u + 96] = 288
            _1072 = mem[_1068]
            mem[u + 288] = mem[_1068]
            w = 0
            x = _1068 + 32
            y = u + 320
            while w < _1072:
                _1171 = mem[x]
                mem[y] = mem[mem[x] + 12 len 20]
                mem[y + 32] = mem[_1171 + 32]
                if mem[_1171 + 64] >= 3:
                    revert with 0, 33
                mem[y + 64] = mem[_1171 + 64]
                mem[y + 96] = mem[_1171 + 96]
                w = w + 1
                x = x + 32
                y = y + 128
                continue 
            _1183 = mem[_1056 + 128]
            mem[u + 128] = (128 * _1072) + 320
            _1186 = mem[_1183]
            mem[u + (128 * _1072) + 320] = mem[_1183]
            idx = 0
            w = _1183 + 32
            x = u + (128 * _1072) + 352
            while idx < _1186:
                _1270 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1270 + 32]
                if mem[_1270 + 64] >= 3:
                    revert with 0, 33
                mem[x + 64] = mem[_1270 + 64]
                mem[x + 96] = mem[_1270 + 96]
                idx = idx + 1
                w = w + 32
                x = x + 128
                continue 
            if mem[_1056 + 160] >= 4:
                revert with 0, 33
            mem[u + 160] = mem[_1056 + 160]
            mem[u + 192] = mem[_1056 + 192]
            mem[u + 224] = mem[_1056 + 224]
            mem[u + 256] = mem[_1056 + 256]
            s = s + 1
            t = t + 32
            u = u + (128 * _1072) + (128 * _1186) + 352
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1569
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1409] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1441] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1473] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1505] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1537] = 0
    mem[var37002] = var37001
    if not var37003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            _1180 = sha3(mem[(32 * idx) + 128], 4)
            _1181 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1181] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
            mem[_1181 + 32] = stor1[_1180]
            mem[_1181 + 64] = stor2[_1180]
            _1182 = mem[64]
            mem[64] = mem[64] + (32 * stor3[_1180]) + 32
            mem[_1182] = stor3[_1180]
            t = _1182 + 32
            s = 0
            while s < stor3[_1180]:
                mem[0] = _1180 + 3
                _1269 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1269] = address(stor[sha3(_1180 + 3) + (4 * s)])
                mem[_1269 + 32] = uint256(stor[sha3(_1180 + 3) + (4 * s) + 1])
                if uint8(stor[sha3(_1180 + 3) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_1269 + 64] = uint8(stor[sha3(_1180 + 3) + (4 * s) + 2])
                mem[_1269 + 96] = uint256(stor[sha3(_1180 + 3) + (4 * s) + 3])
                mem[t] = _1269
                t = t + 32
                s = s + 1
                continue 
            mem[_1181 + 96] = _1182
            _1267 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor4[_1180].field_0)) + 32
            mem[_1267] = uint256(stor4[_1180].field_0)
            t = _1267 + 32
            s = 0
            while s < uint256(stor4[_1180].field_0):
                mem[0] = _1180 + 4
                _1384 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1384] = address(stor[sha3(_1180 + 4) + (4 * s)])
                mem[_1384 + 32] = uint256(stor[sha3(_1180 + 4) + (4 * s) + 1])
                if uint8(stor[sha3(_1180 + 4) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_1384 + 64] = uint8(stor[sha3(_1180 + 4) + (4 * s) + 2])
                mem[_1384 + 96] = uint256(stor[sha3(_1180 + 4) + (4 * s) + 3])
                mem[t] = _1384
                t = t + 32
                s = s + 1
                continue 
            mem[_1181 + 128] = _1267
            if uint8(stor5[_1180].field_0) > 3:
                revert with 0, 33
            mem[_1181 + 160] = uint8(stor5[_1180].field_0)
            mem[_1181 + 192] = stor6[_1180]
            mem[_1181 + 224] = stor7[_1180]
            mem[_1181 + 256] = stor8[_1180]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1181
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1178 = mem[64]
        mem[mem[64]] = 32
        _1185 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + (32 * _1185) + 64
        v = mem[64] + 64
        while s < _1185:
            mem[v] = u + -_1178 - 64
            _1264 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_1264 + 44 len 20]
            mem[u + 64] = mem[_1264 + 76 len 20]
            _1276 = mem[_1264 + 96]
            mem[u + 96] = 288
            _1280 = mem[_1276]
            mem[u + 288] = mem[_1276]
            w = 0
            x = _1276 + 32
            y = u + 320
            while w < _1280:
                _1379 = mem[x]
                mem[y] = mem[mem[x] + 12 len 20]
                mem[y + 32] = mem[_1379 + 32]
                if mem[_1379 + 64] >= 3:
                    revert with 0, 33
                mem[y + 64] = mem[_1379 + 64]
                mem[y + 96] = mem[_1379 + 96]
                w = w + 1
                x = x + 32
                y = y + 128
                continue 
            _1391 = mem[_1264 + 128]
            mem[u + 128] = (128 * _1280) + 320
            _1394 = mem[_1391]
            mem[u + (128 * _1280) + 320] = mem[_1391]
            idx = 0
            w = _1391 + 32
            x = u + (128 * _1280) + 352
            while idx < _1394:
                _1478 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1478 + 32]
                if mem[_1478 + 64] >= 3:
                    revert with 0, 33
                mem[x + 64] = mem[_1478 + 64]
                mem[x + 96] = mem[_1478 + 96]
                idx = idx + 1
                w = w + 32
                x = x + 128
                continue 
            if mem[_1264 + 160] >= 4:
                revert with 0, 33
            mem[u + 160] = mem[_1264 + 160]
            mem[u + 192] = mem[_1264 + 192]
            mem[u + 224] = mem[_1264 + 224]
            mem[u + 256] = mem[_1264 + 256]
            s = s + 1
            t = t + 32
            u = u + (128 * _1280) + (128 * _1394) + 352
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1857
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1569] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1601] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1633] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1665] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1697] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1729] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1761] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1793] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1825] = 0
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            _1388 = sha3(mem[(32 * idx) + 128], 4)
            _1389 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1389] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
            mem[_1389 + 32] = stor1[_1388]
            mem[_1389 + 64] = stor2[_1388]
            _1390 = mem[64]
            mem[64] = mem[64] + (32 * stor3[_1388]) + 32
            mem[_1390] = stor3[_1388]
            t = _1390 + 32
            s = 0
            while s < stor3[_1388]:
                mem[0] = _1388 + 3
                _1477 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1477] = address(stor[sha3(_1388 + 3) + (4 * s)])
                mem[_1477 + 32] = uint256(stor[sha3(_1388 + 3) + (4 * s) + 1])
                if uint8(stor[sha3(_1388 + 3) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_1477 + 64] = uint8(stor[sha3(_1388 + 3) + (4 * s) + 2])
                mem[_1477 + 96] = uint256(stor[sha3(_1388 + 3) + (4 * s) + 3])
                mem[t] = _1477
                t = t + 32
                s = s + 1
                continue 
            mem[_1389 + 96] = _1390
            _1475 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor4[_1388].field_0)) + 32
            mem[_1475] = uint256(stor4[_1388].field_0)
            t = _1475 + 32
            s = 0
            while s < uint256(stor4[_1388].field_0):
                mem[0] = _1388 + 4
                _1592 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1592] = address(stor[sha3(_1388 + 4) + (4 * s)])
                mem[_1592 + 32] = uint256(stor[sha3(_1388 + 4) + (4 * s) + 1])
                if uint8(stor[sha3(_1388 + 4) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_1592 + 64] = uint8(stor[sha3(_1388 + 4) + (4 * s) + 2])
                mem[_1592 + 96] = uint256(stor[sha3(_1388 + 4) + (4 * s) + 3])
                mem[t] = _1592
                t = t + 32
                s = s + 1
                continue 
            mem[_1389 + 128] = _1475
            if uint8(stor5[_1388].field_0) > 3:
                revert with 0, 33
            mem[_1389 + 160] = uint8(stor5[_1388].field_0)
            mem[_1389 + 192] = stor6[_1388]
            mem[_1389 + 224] = stor7[_1388]
            mem[_1389 + 256] = stor8[_1388]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1389
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1386 = mem[64]
        mem[mem[64]] = 32
        _1393 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + (32 * _1393) + 64
        v = mem[64] + 64
        while s < _1393:
            mem[v] = u + -_1386 - 64
            _1472 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_1472 + 44 len 20]
            mem[u + 64] = mem[_1472 + 76 len 20]
            _1484 = mem[_1472 + 96]
            mem[u + 96] = 288
            _1488 = mem[_1484]
            mem[u + 288] = mem[_1484]
            w = 0
            x = _1484 + 32
            y = u + 320
            while w < _1488:
                _1587 = mem[x]
                mem[y] = mem[mem[x] + 12 len 20]
                mem[y + 32] = mem[_1587 + 32]
                if mem[_1587 + 64] >= 3:
                    revert with 0, 33
                mem[y + 64] = mem[_1587 + 64]
                mem[y + 96] = mem[_1587 + 96]
                w = w + 1
                x = x + 32
                y = y + 128
                continue 
            _1599 = mem[_1472 + 128]
            mem[u + 128] = (128 * _1488) + 320
            _1602 = mem[_1599]
            mem[u + (128 * _1488) + 320] = mem[_1599]
            idx = 0
            w = _1599 + 32
            x = u + (128 * _1488) + 352
            while idx < _1602:
                _1686 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1686 + 32]
                if mem[_1686 + 64] >= 3:
                    revert with 0, 33
                mem[x + 64] = mem[_1686 + 64]
                mem[x + 96] = mem[_1686 + 96]
                idx = idx + 1
                w = w + 32
                x = x + 128
                continue 
            if mem[_1472 + 160] >= 4:
                revert with 0, 33
            mem[u + 160] = mem[_1472 + 160]
            mem[u + 192] = mem[_1472 + 192]
            mem[u + 224] = mem[_1472 + 224]
            mem[u + 256] = mem[_1472 + 256]
            s = s + 1
            t = t + 32
            u = u + (128 * _1488) + (128 * _1602) + 352
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2145
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1857] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1889] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1921] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1953] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1985] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2017] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2049] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2081] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2113] = 0
    mem[var45002] = var45001
    if not var45003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            _1596 = sha3(mem[(32 * idx) + 128], 4)
            _1597 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1597] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
            mem[_1597 + 32] = stor1[_1596]
            mem[_1597 + 64] = stor2[_1596]
            _1598 = mem[64]
            mem[64] = mem[64] + (32 * stor3[_1596]) + 32
            mem[_1598] = stor3[_1596]
            t = _1598 + 32
            s = 0
            while s < stor3[_1596]:
                mem[0] = _1596 + 3
                _1685 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1685] = address(stor[sha3(_1596 + 3) + (4 * s)])
                mem[_1685 + 32] = uint256(stor[sha3(_1596 + 3) + (4 * s) + 1])
                if uint8(stor[sha3(_1596 + 3) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_1685 + 64] = uint8(stor[sha3(_1596 + 3) + (4 * s) + 2])
                mem[_1685 + 96] = uint256(stor[sha3(_1596 + 3) + (4 * s) + 3])
                mem[t] = _1685
                t = t + 32
                s = s + 1
                continue 
            mem[_1597 + 96] = _1598
            _1683 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor4[_1596].field_0)) + 32
            mem[_1683] = uint256(stor4[_1596].field_0)
            t = _1683 + 32
            s = 0
            while s < uint256(stor4[_1596].field_0):
                mem[0] = _1596 + 4
                _1800 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1800] = address(stor[sha3(_1596 + 4) + (4 * s)])
                mem[_1800 + 32] = uint256(stor[sha3(_1596 + 4) + (4 * s) + 1])
                if uint8(stor[sha3(_1596 + 4) + (4 * s) + 2]) > 2:
                    revert with 0, 33
                mem[_1800 + 64] = uint8(stor[sha3(_1596 + 4) + (4 * s) + 2])
                mem[_1800 + 96] = uint256(stor[sha3(_1596 + 4) + (4 * s) + 3])
                mem[t] = _1800
                t = t + 32
                s = s + 1
                continue 
            mem[_1597 + 128] = _1683
            if uint8(stor5[_1596].field_0) > 3:
                revert with 0, 33
            mem[_1597 + 160] = uint8(stor5[_1596].field_0)
            mem[_1597 + 192] = stor6[_1596]
            mem[_1597 + 224] = stor7[_1596]
            mem[_1597 + 256] = stor8[_1596]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1597
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1594 = mem[64]
        mem[mem[64]] = 32
        _1601 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + (32 * _1601) + 64
        v = mem[64] + 64
        while s < _1601:
            mem[v] = u + -_1594 - 64
            _1680 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_1680 + 44 len 20]
            mem[u + 64] = mem[_1680 + 76 len 20]
            _1692 = mem[_1680 + 96]
            mem[u + 96] = 288
            _1696 = mem[_1692]
            mem[u + 288] = mem[_1692]
            w = 0
            x = _1692 + 32
            y = u + 320
            while w < _1696:
                _1795 = mem[x]
                mem[y] = mem[mem[x] + 12 len 20]
                mem[y + 32] = mem[_1795 + 32]
                if mem[_1795 + 64] >= 3:
                    revert with 0, 33
                mem[y + 64] = mem[_1795 + 64]
                mem[y + 96] = mem[_1795 + 96]
                w = w + 1
                x = x + 32
                y = y + 128
                continue 
            _1807 = mem[_1680 + 128]
            mem[u + 128] = (128 * _1696) + 320
            _1810 = mem[_1807]
            mem[u + (128 * _1696) + 320] = mem[_1807]
            idx = 0
            w = _1807 + 32
            x = u + (128 * _1696) + 352
            while idx < _1810:
                _1894 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1894 + 32]
                if mem[_1894 + 64] >= 3:
                    revert with 0, 33
                mem[x + 64] = mem[_1894 + 64]
                mem[x + 96] = mem[_1894 + 96]
                idx = idx + 1
                w = w + 32
                x = x + 128
                continue 
            if mem[_1680 + 160] >= 4:
                revert with 0, 33
            mem[u + 160] = mem[_1680 + 160]
            mem[u + 192] = mem[_1680 + 192]
            mem[u + 224] = mem[_1680 + 224]
            mem[u + 256] = mem[_1680 + 256]
            s = s + 1
            t = t + 32
            u = u + (128 * _1696) + (128 * _1810) + 352
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2145] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2177] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2209] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2241] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2273] = 96
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2305] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2337] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2369] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2401] = 0
    mem[var49002] = var49001
    if var49003 - 1:
        # nil
    else:
        if var64001 >= ('cd', 4).length:
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2433] = 32
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2465] = ('cd', 4).length
            if var70001 >= ('cd', 4).length:
                return memory
                  from ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2433
                   len var70003 + -ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) - 2433
            # nil
        else:
            if var64001 >= ('cd', 4).length:
                revert with 0, 50
            _1804 = sha3(mem[(32 * var64001) + 128], 4)
            mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + (32 * uint256(stor4[mem[(32 * var64001) + 128]].field_768)) + 2753
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2753
            idx = 0
            while idx < stor3[_1804]:
                mem[0] = _1804 + 3
                _1893 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1893] = address(stor[sha3(_1804 + 3) + (4 * idx)])
                mem[_1893 + 32] = uint256(stor[sha3(_1804 + 3) + (4 * idx) + 1])
                if uint8(stor[sha3(_1804 + 3) + (4 * idx) + 2]) > 2:
                    revert with 0, 33
                mem[_1893 + 64] = uint8(stor[sha3(_1804 + 3) + (4 * idx) + 2])
                mem[_1893 + 96] = uint256(stor[sha3(_1804 + 3) + (4 * idx) + 3])
                mem[s] = _1893
                s = s + 32
                idx = idx + 1
                continue 
            # nil
}

function sub_bfa5e00d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 5
    mem[96] = uint256(stor5[address(arg1)].field_0)
    if uint256(stor5[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 5)
        mem[128] = uint256(stor5[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor5[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(stor5[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if uint256(stor5[address(arg1)].field_0) > test266151307():
            revert with 0, 65
        mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128] = uint256(stor5[address(arg1)].field_0)
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 160
        if not uint256(stor5[address(arg1)].field_0):
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _358 = sha3(mem[(32 * idx) + 128], 4)
                _359 = mem[64]
                mem[64] = mem[64] + 288
                mem[_359] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_359 + 32] = stor1[_358]
                mem[_359 + 64] = stor2[_358]
                _360 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_358]) + 32
                mem[_360] = stor3[_358]
                t = _360 + 32
                s = 0
                while s < stor3[_358]:
                    mem[0] = _358 + 3
                    _525 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_525] = address(stor[sha3(_358 + 3) + (4 * s)])
                    mem[_525 + 32] = uint256(stor[sha3(_358 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_358 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_525 + 64] = uint8(stor[sha3(_358 + 3) + (4 * s) + 2])
                    mem[_525 + 96] = uint256(stor[sha3(_358 + 3) + (4 * s) + 3])
                    mem[t] = _525
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_359 + 96] = _360
                _523 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_358].field_0)) + 32
                mem[_523] = uint256(stor4[_358].field_0)
                t = _523 + 32
                s = 0
                while s < uint256(stor4[_358].field_0):
                    mem[0] = _358 + 4
                    _742 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_742] = address(stor[sha3(_358 + 4) + (4 * s)])
                    mem[_742 + 32] = uint256(stor[sha3(_358 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_358 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_742 + 64] = uint8(stor[sha3(_358 + 4) + (4 * s) + 2])
                    mem[_742 + 96] = uint256(stor[sha3(_358 + 4) + (4 * s) + 3])
                    mem[t] = _742
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_359 + 128] = _523
                if uint8(stor5[_358].field_0) > 3:
                    revert with 0, 33
                mem[_359 + 160] = uint8(stor5[_358].field_0)
                mem[_359 + 192] = stor6[_358]
                mem[_359 + 224] = stor7[_358]
                mem[_359 + 256] = stor8[_358]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _359
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _365 = mem[64]
            mem[mem[64]] = 32
            _371 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _371) + 64
            u = mem[64] + 64
            while idx < _371:
                mem[u] = t + -_365 - 64
                _520 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_520 + 44 len 20]
                mem[t + 64] = mem[_520 + 76 len 20]
                _534 = mem[_520 + 96]
                mem[t + 96] = 288
                _539 = mem[_534]
                mem[t + 288] = mem[_534]
                v = 0
                w = _534 + 32
                x = t + 320
                while v < _539:
                    _737 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_737 + 32]
                    if mem[_737 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_737 + 64]
                    mem[x + 96] = mem[_737 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _751 = mem[_520 + 128]
                mem[t + 128] = (128 * _539) + 320
                _761 = mem[_751]
                mem[t + (128 * _539) + 320] = mem[_751]
                v = 0
                w = _751 + 32
                x = t + (128 * _539) + 352
                while v < _761:
                    _927 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_927 + 32]
                    if mem[_927 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_927 + 64]
                    mem[x + 96] = mem[_927 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_520 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_520 + 160]
                mem[t + 192] = mem[_520 + 192]
                mem[t + 224] = mem[_520 + 224]
                mem[t + 256] = mem[_520 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _539) + (128 * _761) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 448
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 160] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 192] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 224] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 256] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 288] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 320] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 352] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 384] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 416] = 0
        mem[var24002] = var24001
        if not var24003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _755 = sha3(mem[(32 * idx) + 128], 4)
                _756 = mem[64]
                mem[64] = mem[64] + 288
                mem[_756] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_756 + 32] = stor1[_755]
                mem[_756 + 64] = stor2[_755]
                _757 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_755]) + 32
                mem[_757] = stor3[_755]
                t = _757 + 32
                s = 0
                while s < stor3[_755]:
                    mem[0] = _755 + 3
                    _937 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_937] = address(stor[sha3(_755 + 3) + (4 * s)])
                    mem[_937 + 32] = uint256(stor[sha3(_755 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_755 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_937 + 64] = uint8(stor[sha3(_755 + 3) + (4 * s) + 2])
                    mem[_937 + 96] = uint256(stor[sha3(_755 + 3) + (4 * s) + 3])
                    mem[t] = _937
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_756 + 96] = _757
                _935 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_755].field_0)) + 32
                mem[_935] = uint256(stor4[_755].field_0)
                t = _935 + 32
                s = 0
                while s < uint256(stor4[_755].field_0):
                    mem[0] = _755 + 4
                    _1159 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1159] = address(stor[sha3(_755 + 4) + (4 * s)])
                    mem[_1159 + 32] = uint256(stor[sha3(_755 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_755 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1159 + 64] = uint8(stor[sha3(_755 + 4) + (4 * s) + 2])
                    mem[_1159 + 96] = uint256(stor[sha3(_755 + 4) + (4 * s) + 3])
                    mem[t] = _1159
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_756 + 128] = _935
                if uint8(stor5[_755].field_0) > 3:
                    revert with 0, 33
                mem[_756 + 160] = uint8(stor5[_755].field_0)
                mem[_756 + 192] = stor6[_755]
                mem[_756 + 224] = stor7[_755]
                mem[_756 + 256] = stor8[_755]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _756
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _763 = mem[64]
            mem[mem[64]] = 32
            _770 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _770) + 64
            u = mem[64] + 64
            while idx < _770:
                mem[u] = t + -_763 - 64
                _932 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_932 + 44 len 20]
                mem[t + 64] = mem[_932 + 76 len 20]
                _947 = mem[_932 + 96]
                mem[t + 96] = 288
                _953 = mem[_947]
                mem[t + 288] = mem[_947]
                v = 0
                w = _947 + 32
                x = t + 320
                while v < _953:
                    _1154 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1154 + 32]
                    if mem[_1154 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1154 + 64]
                    mem[x + 96] = mem[_1154 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _1172 = mem[_932 + 128]
                mem[t + 128] = (128 * _953) + 320
                _1178 = mem[_1172]
                mem[t + (128 * _953) + 320] = mem[_1172]
                v = 0
                w = _1172 + 32
                x = t + (128 * _953) + 352
                while v < _1178:
                    _1350 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1350 + 32]
                    if mem[_1350 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1350 + 64]
                    mem[x + 96] = mem[_1350 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_932 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_932 + 160]
                mem[t + 192] = mem[_932 + 192]
                mem[t + 224] = mem[_932 + 224]
                mem[t + 256] = mem[_932 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _953) + (128 * _1178) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 736
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 448] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 480] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 512] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 544] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 576] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 608] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 640] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 672] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 704] = 0
        mem[var28002] = var28001
        if not var28003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _1169 = sha3(mem[(32 * idx) + 128], 4)
                _1170 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1170] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_1170 + 32] = stor1[_1169]
                mem[_1170 + 64] = stor2[_1169]
                _1171 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_1169]) + 32
                mem[_1171] = stor3[_1169]
                t = _1171 + 32
                s = 0
                while s < stor3[_1169]:
                    mem[0] = _1169 + 3
                    _1349 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1349] = address(stor[sha3(_1169 + 3) + (4 * s)])
                    mem[_1349 + 32] = uint256(stor[sha3(_1169 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_1169 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1349 + 64] = uint8(stor[sha3(_1169 + 3) + (4 * s) + 2])
                    mem[_1349 + 96] = uint256(stor[sha3(_1169 + 3) + (4 * s) + 3])
                    mem[t] = _1349
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1170 + 96] = _1171
                _1347 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_1169].field_0)) + 32
                mem[_1347] = uint256(stor4[_1169].field_0)
                t = _1347 + 32
                s = 0
                while s < uint256(stor4[_1169].field_0):
                    mem[0] = _1169 + 4
                    _1575 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1575] = address(stor[sha3(_1169 + 4) + (4 * s)])
                    mem[_1575 + 32] = uint256(stor[sha3(_1169 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_1169 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1575 + 64] = uint8(stor[sha3(_1169 + 4) + (4 * s) + 2])
                    mem[_1575 + 96] = uint256(stor[sha3(_1169 + 4) + (4 * s) + 3])
                    mem[t] = _1575
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1170 + 128] = _1347
                if uint8(stor5[_1169].field_0) > 3:
                    revert with 0, 33
                mem[_1170 + 160] = uint8(stor5[_1169].field_0)
                mem[_1170 + 192] = stor6[_1169]
                mem[_1170 + 224] = stor7[_1169]
                mem[_1170 + 256] = stor8[_1169]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _1170
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1177 = mem[64]
            mem[mem[64]] = 32
            _1186 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _1186) + 64
            u = mem[64] + 64
            while idx < _1186:
                mem[u] = t + -_1177 - 64
                _1344 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1344 + 44 len 20]
                mem[t + 64] = mem[_1344 + 76 len 20]
                _1361 = mem[_1344 + 96]
                mem[t + 96] = 288
                _1369 = mem[_1361]
                mem[t + 288] = mem[_1361]
                v = 0
                w = _1361 + 32
                x = t + 320
                while v < _1369:
                    _1570 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1570 + 32]
                    if mem[_1570 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1570 + 64]
                    mem[x + 96] = mem[_1570 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _1588 = mem[_1344 + 128]
                mem[t + 128] = (128 * _1369) + 320
                _1594 = mem[_1588]
                mem[t + (128 * _1369) + 320] = mem[_1588]
                v = 0
                w = _1588 + 32
                x = t + (128 * _1369) + 352
                while v < _1594:
                    _1766 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1766 + 32]
                    if mem[_1766 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1766 + 64]
                    mem[x + 96] = mem[_1766 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_1344 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_1344 + 160]
                mem[t + 192] = mem[_1344 + 192]
                mem[t + 224] = mem[_1344 + 224]
                mem[t + 256] = mem[_1344 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _1369) + (128 * _1594) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 1024
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 736] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 768] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 800] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 832] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 864] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 896] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 928] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 960] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 992] = 0
        mem[var32002] = var32001
        if not var32003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _1585 = sha3(mem[(32 * idx) + 128], 4)
                _1586 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1586] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_1586 + 32] = stor1[_1585]
                mem[_1586 + 64] = stor2[_1585]
                _1587 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_1585]) + 32
                mem[_1587] = stor3[_1585]
                t = _1587 + 32
                s = 0
                while s < stor3[_1585]:
                    mem[0] = _1585 + 3
                    _1765 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1765] = address(stor[sha3(_1585 + 3) + (4 * s)])
                    mem[_1765 + 32] = uint256(stor[sha3(_1585 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_1585 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1765 + 64] = uint8(stor[sha3(_1585 + 3) + (4 * s) + 2])
                    mem[_1765 + 96] = uint256(stor[sha3(_1585 + 3) + (4 * s) + 3])
                    mem[t] = _1765
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1586 + 96] = _1587
                _1763 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_1585].field_0)) + 32
                mem[_1763] = uint256(stor4[_1585].field_0)
                t = _1763 + 32
                s = 0
                while s < uint256(stor4[_1585].field_0):
                    mem[0] = _1585 + 4
                    _1991 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1991] = address(stor[sha3(_1585 + 4) + (4 * s)])
                    mem[_1991 + 32] = uint256(stor[sha3(_1585 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_1585 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1991 + 64] = uint8(stor[sha3(_1585 + 4) + (4 * s) + 2])
                    mem[_1991 + 96] = uint256(stor[sha3(_1585 + 4) + (4 * s) + 3])
                    mem[t] = _1991
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1586 + 128] = _1763
                if uint8(stor5[_1585].field_0) > 3:
                    revert with 0, 33
                mem[_1586 + 160] = uint8(stor5[_1585].field_0)
                mem[_1586 + 192] = stor6[_1585]
                mem[_1586 + 224] = stor7[_1585]
                mem[_1586 + 256] = stor8[_1585]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _1586
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1593 = mem[64]
            mem[mem[64]] = 32
            _1602 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _1602) + 64
            u = mem[64] + 64
            while idx < _1602:
                mem[u] = t + -_1593 - 64
                _1760 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1760 + 44 len 20]
                mem[t + 64] = mem[_1760 + 76 len 20]
                _1777 = mem[_1760 + 96]
                mem[t + 96] = 288
                _1785 = mem[_1777]
                mem[t + 288] = mem[_1777]
                v = 0
                w = _1777 + 32
                x = t + 320
                while v < _1785:
                    _1986 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1986 + 32]
                    if mem[_1986 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1986 + 64]
                    mem[x + 96] = mem[_1986 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _2004 = mem[_1760 + 128]
                mem[t + 128] = (128 * _1785) + 320
                _2010 = mem[_2004]
                mem[t + (128 * _1785) + 320] = mem[_2004]
                v = 0
                w = _2004 + 32
                x = t + (128 * _1785) + 352
                while v < _2010:
                    _2182 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_2182 + 32]
                    if mem[_2182 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_2182 + 64]
                    mem[x + 96] = mem[_2182 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_1760 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_1760 + 160]
                mem[t + 192] = mem[_1760 + 192]
                mem[t + 224] = mem[_1760 + 224]
                mem[t + 256] = mem[_1760 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _1785) + (128 * _2010) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 1312
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1024] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1056] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1088] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1120] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1152] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1184] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1216] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1248] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1280] = 0
        mem[var36002] = var36001
        if not var36003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _2001 = sha3(mem[(32 * idx) + 128], 4)
                _2002 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2002] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_2002 + 32] = stor1[_2001]
                mem[_2002 + 64] = stor2[_2001]
                _2003 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_2001]) + 32
                mem[_2003] = stor3[_2001]
                t = _2003 + 32
                s = 0
                while s < stor3[_2001]:
                    mem[0] = _2001 + 3
                    _2181 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2181] = address(stor[sha3(_2001 + 3) + (4 * s)])
                    mem[_2181 + 32] = uint256(stor[sha3(_2001 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_2001 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_2181 + 64] = uint8(stor[sha3(_2001 + 3) + (4 * s) + 2])
                    mem[_2181 + 96] = uint256(stor[sha3(_2001 + 3) + (4 * s) + 3])
                    mem[t] = _2181
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2002 + 96] = _2003
                _2179 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_2001].field_0)) + 32
                mem[_2179] = uint256(stor4[_2001].field_0)
                t = _2179 + 32
                s = 0
                while s < uint256(stor4[_2001].field_0):
                    mem[0] = _2001 + 4
                    _2407 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2407] = address(stor[sha3(_2001 + 4) + (4 * s)])
                    mem[_2407 + 32] = uint256(stor[sha3(_2001 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_2001 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_2407 + 64] = uint8(stor[sha3(_2001 + 4) + (4 * s) + 2])
                    mem[_2407 + 96] = uint256(stor[sha3(_2001 + 4) + (4 * s) + 3])
                    mem[t] = _2407
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2002 + 128] = _2179
                if uint8(stor5[_2001].field_0) > 3:
                    revert with 0, 33
                mem[_2002 + 160] = uint8(stor5[_2001].field_0)
                mem[_2002 + 192] = stor6[_2001]
                mem[_2002 + 224] = stor7[_2001]
                mem[_2002 + 256] = stor8[_2001]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _2002
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2009 = mem[64]
            mem[mem[64]] = 32
            _2018 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _2018) + 64
            u = mem[64] + 64
            while idx < _2018:
                mem[u] = t + -_2009 - 64
                _2176 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2176 + 44 len 20]
                mem[t + 64] = mem[_2176 + 76 len 20]
                _2193 = mem[_2176 + 96]
                mem[t + 96] = 288
                _2201 = mem[_2193]
                mem[t + 288] = mem[_2193]
                v = 0
                w = _2193 + 32
                x = t + 320
                while v < _2201:
                    _2402 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_2402 + 32]
                    if mem[_2402 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_2402 + 64]
                    mem[x + 96] = mem[_2402 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _2420 = mem[_2176 + 128]
                mem[t + 128] = (128 * _2201) + 320
                _2426 = mem[_2420]
                mem[t + (128 * _2201) + 320] = mem[_2420]
                v = 0
                w = _2420 + 32
                x = t + (128 * _2201) + 352
                while v < _2426:
                    _2598 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_2598 + 32]
                    if mem[_2598 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_2598 + 64]
                    mem[x + 96] = mem[_2598 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_2176 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_2176 + 160]
                mem[t + 192] = mem[_2176 + 192]
                mem[t + 224] = mem[_2176 + 224]
                mem[t + 256] = mem[_2176 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _2201) + (128 * _2426) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 1600
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1312] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1344] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1376] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1408] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1440] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1472] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1504] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1536] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1568] = 0
        mem[var40002] = var40001
        if not var40003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _2417 = sha3(mem[(32 * idx) + 128], 4)
                _2418 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2418] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_2418 + 32] = stor1[_2417]
                mem[_2418 + 64] = stor2[_2417]
                _2419 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_2417]) + 32
                mem[_2419] = stor3[_2417]
                t = _2419 + 32
                s = 0
                while s < stor3[_2417]:
                    mem[0] = _2417 + 3
                    _2597 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2597] = address(stor[sha3(_2417 + 3) + (4 * s)])
                    mem[_2597 + 32] = uint256(stor[sha3(_2417 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_2417 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_2597 + 64] = uint8(stor[sha3(_2417 + 3) + (4 * s) + 2])
                    mem[_2597 + 96] = uint256(stor[sha3(_2417 + 3) + (4 * s) + 3])
                    mem[t] = _2597
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2418 + 96] = _2419
                _2595 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_2417].field_0)) + 32
                mem[_2595] = uint256(stor4[_2417].field_0)
                t = _2595 + 32
                s = 0
                while s < uint256(stor4[_2417].field_0):
                    mem[0] = _2417 + 4
                    _2823 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2823] = address(stor[sha3(_2417 + 4) + (4 * s)])
                    mem[_2823 + 32] = uint256(stor[sha3(_2417 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_2417 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_2823 + 64] = uint8(stor[sha3(_2417 + 4) + (4 * s) + 2])
                    mem[_2823 + 96] = uint256(stor[sha3(_2417 + 4) + (4 * s) + 3])
                    mem[t] = _2823
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2418 + 128] = _2595
                if uint8(stor5[_2417].field_0) > 3:
                    revert with 0, 33
                mem[_2418 + 160] = uint8(stor5[_2417].field_0)
                mem[_2418 + 192] = stor6[_2417]
                mem[_2418 + 224] = stor7[_2417]
                mem[_2418 + 256] = stor8[_2417]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _2418
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2425 = mem[64]
            mem[mem[64]] = 32
            _2434 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _2434) + 64
            u = mem[64] + 64
            while idx < _2434:
                mem[u] = t + -_2425 - 64
                _2592 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2592 + 44 len 20]
                mem[t + 64] = mem[_2592 + 76 len 20]
                _2609 = mem[_2592 + 96]
                mem[t + 96] = 288
                _2617 = mem[_2609]
                mem[t + 288] = mem[_2609]
                v = 0
                w = _2609 + 32
                x = t + 320
                while v < _2617:
                    _2818 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_2818 + 32]
                    if mem[_2818 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_2818 + 64]
                    mem[x + 96] = mem[_2818 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _2836 = mem[_2592 + 128]
                mem[t + 128] = (128 * _2617) + 320
                _2842 = mem[_2836]
                mem[t + (128 * _2617) + 320] = mem[_2836]
                v = 0
                w = _2836 + 32
                x = t + (128 * _2617) + 352
                while v < _2842:
                    _3014 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_3014 + 32]
                    if mem[_3014 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_3014 + 64]
                    mem[x + 96] = mem[_3014 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_2592 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_2592 + 160]
                mem[t + 192] = mem[_2592 + 192]
                mem[t + 224] = mem[_2592 + 224]
                mem[t + 256] = mem[_2592 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _2617) + (128 * _2842) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 1888
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1600] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1632] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1664] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1696] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1728] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1760] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1792] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1824] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1856] = 0
        mem[var44002] = var44001
        if not var44003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _2833 = sha3(mem[(32 * idx) + 128], 4)
                _2834 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2834] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_2834 + 32] = stor1[_2833]
                mem[_2834 + 64] = stor2[_2833]
                _2835 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_2833]) + 32
                mem[_2835] = stor3[_2833]
                t = _2835 + 32
                s = 0
                while s < stor3[_2833]:
                    mem[0] = _2833 + 3
                    _3013 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3013] = address(stor[sha3(_2833 + 3) + (4 * s)])
                    mem[_3013 + 32] = uint256(stor[sha3(_2833 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_2833 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_3013 + 64] = uint8(stor[sha3(_2833 + 3) + (4 * s) + 2])
                    mem[_3013 + 96] = uint256(stor[sha3(_2833 + 3) + (4 * s) + 3])
                    mem[t] = _3013
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2834 + 96] = _2835
                _3011 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_2833].field_0)) + 32
                mem[_3011] = uint256(stor4[_2833].field_0)
                t = _3011 + 32
                s = 0
                while s < uint256(stor4[_2833].field_0):
                    mem[0] = _2833 + 4
                    _3239 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3239] = address(stor[sha3(_2833 + 4) + (4 * s)])
                    mem[_3239 + 32] = uint256(stor[sha3(_2833 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_2833 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_3239 + 64] = uint8(stor[sha3(_2833 + 4) + (4 * s) + 2])
                    mem[_3239 + 96] = uint256(stor[sha3(_2833 + 4) + (4 * s) + 3])
                    mem[t] = _3239
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2834 + 128] = _3011
                if uint8(stor5[_2833].field_0) > 3:
                    revert with 0, 33
                mem[_2834 + 160] = uint8(stor5[_2833].field_0)
                mem[_2834 + 192] = stor6[_2833]
                mem[_2834 + 224] = stor7[_2833]
                mem[_2834 + 256] = stor8[_2833]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _2834
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2841 = mem[64]
            mem[mem[64]] = 32
            _2850 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _2850) + 64
            u = mem[64] + 64
            while idx < _2850:
                mem[u] = t + -_2841 - 64
                _3008 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_3008 + 44 len 20]
                mem[t + 64] = mem[_3008 + 76 len 20]
                _3025 = mem[_3008 + 96]
                mem[t + 96] = 288
                _3033 = mem[_3025]
                mem[t + 288] = mem[_3025]
                v = 0
                w = _3025 + 32
                x = t + 320
                while v < _3033:
                    _3234 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_3234 + 32]
                    if mem[_3234 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_3234 + 64]
                    mem[x + 96] = mem[_3234 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _3252 = mem[_3008 + 128]
                mem[t + 128] = (128 * _3033) + 320
                _3258 = mem[_3252]
                mem[t + (128 * _3033) + 320] = mem[_3252]
                v = 0
                w = _3252 + 32
                x = t + (128 * _3033) + 352
                while v < _3258:
                    _3430 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_3430 + 32]
                    if mem[_3430 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_3430 + 64]
                    mem[x + 96] = mem[_3430 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_3008 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_3008 + 160]
                mem[t + 192] = mem[_3008 + 192]
                mem[t + 224] = mem[_3008 + 224]
                mem[t + 256] = mem[_3008 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _3033) + (128 * _3258) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 2176
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1888] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1920] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1952] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1984] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2016] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2048] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2080] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2112] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2144] = 0
        mem[var48002] = var48001
        if var48003 - 1:
            if var52003 - 1:
                # nil
            else:
                if var67001 >= uint256(stor5[address(arg1)].field_0):
                    # nil
                else:
                    if var67001 >= uint256(stor5[address(arg1)].field_0):
                        revert with 0, 50
                    # nil
        else:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _3249 = sha3(mem[(32 * idx) + 128], 4)
                _3250 = mem[64]
                mem[64] = mem[64] + 288
                mem[_3250] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_3250 + 32] = stor1[_3249]
                mem[_3250 + 64] = stor2[_3249]
                _3251 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_3249]) + 32
                mem[_3251] = stor3[_3249]
                t = _3251 + 32
                s = 0
                while s < stor3[_3249]:
                    mem[0] = _3249 + 3
                    _3429 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3429] = address(stor[sha3(_3249 + 3) + (4 * s)])
                    mem[_3429 + 32] = uint256(stor[sha3(_3249 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_3249 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_3429 + 64] = uint8(stor[sha3(_3249 + 3) + (4 * s) + 2])
                    mem[_3429 + 96] = uint256(stor[sha3(_3249 + 3) + (4 * s) + 3])
                    mem[t] = _3429
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_3250 + 96] = _3251
                _3427 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_3249].field_0)) + 32
                mem[_3427] = uint256(stor4[_3249].field_0)
                t = _3427 + 32
                s = 0
                while s < uint256(stor4[_3249].field_0):
                    mem[0] = _3249 + 4
                    _3655 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3655] = address(stor[sha3(_3249 + 4) + (4 * s)])
                    mem[_3655 + 32] = uint256(stor[sha3(_3249 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_3249 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_3655 + 64] = uint8(stor[sha3(_3249 + 4) + (4 * s) + 2])
                    mem[_3655 + 96] = uint256(stor[sha3(_3249 + 4) + (4 * s) + 3])
                    mem[t] = _3655
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_3250 + 128] = _3427
                if uint8(stor5[_3249].field_0) > 3:
                    revert with 0, 33
                mem[_3250 + 160] = uint8(stor5[_3249].field_0)
                mem[_3250 + 192] = stor6[_3249]
                mem[_3250 + 224] = stor7[_3249]
                mem[_3250 + 256] = stor8[_3249]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _3250
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _3266 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            if var70001 >= _3266:
                return memory
                  from mem[64]
                   len var70003 - mem[64]
            mem[var70005] = var70003 + -mem[64] - 64
            _3424 = mem[var70002]
            mem[var70003] = mem[mem[var70002]]
            mem[var70003 + 32] = mem[_3424 + 44 len 20]
            mem[var70003 + 64] = mem[_3424 + 76 len 20]
            _3441 = mem[_3424 + 96]
            mem[var70003 + 96] = 288
            _3449 = mem[_3441]
            mem[var70003 + 288] = mem[_3441]
            idx = 0
            s = _3441 + 32
            t = var70003 + 320
            while idx < _3449:
                _3650 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3650 + 32]
                if mem[_3650 + 64] >= 3:
                    revert with 0, 33
                mem[t + 64] = mem[_3650 + 64]
                mem[t + 96] = mem[_3650 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            # nil
    else:
        if uint256(stor5[address(arg1)].field_0) > test266151307():
            revert with 0, 65
        mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128] = uint256(stor5[address(arg1)].field_0)
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 160
        if not uint256(stor5[address(arg1)].field_0):
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _85 = sha3(mem[(32 * idx) + 128], 4)
                _86 = mem[64]
                mem[64] = mem[64] + 288
                mem[_86] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_86 + 32] = stor1[_85]
                mem[_86 + 64] = stor2[_85]
                _87 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_85]) + 32
                mem[_87] = stor3[_85]
                t = _87 + 32
                s = 0
                while s < stor3[_85]:
                    mem[0] = _85 + 3
                    _162 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_162] = address(stor[sha3(_85 + 3) + (4 * s)])
                    mem[_162 + 32] = uint256(stor[sha3(_85 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_85 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_162 + 64] = uint8(stor[sha3(_85 + 3) + (4 * s) + 2])
                    mem[_162 + 96] = uint256(stor[sha3(_85 + 3) + (4 * s) + 3])
                    mem[t] = _162
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_86 + 96] = _87
                _160 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_85].field_0)) + 32
                mem[_160] = uint256(stor4[_85].field_0)
                t = _160 + 32
                s = 0
                while s < uint256(stor4[_85].field_0):
                    mem[0] = _85 + 4
                    _347 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_347] = address(stor[sha3(_85 + 4) + (4 * s)])
                    mem[_347 + 32] = uint256(stor[sha3(_85 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_85 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_347 + 64] = uint8(stor[sha3(_85 + 4) + (4 * s) + 2])
                    mem[_347 + 96] = uint256(stor[sha3(_85 + 4) + (4 * s) + 3])
                    mem[t] = _347
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_86 + 128] = _160
                if uint8(stor5[_85].field_0) > 3:
                    revert with 0, 33
                mem[_86 + 160] = uint8(stor5[_85].field_0)
                mem[_86 + 192] = stor6[_85]
                mem[_86 + 224] = stor7[_85]
                mem[_86 + 256] = stor8[_85]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _86
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _89 = mem[64]
            mem[mem[64]] = 32
            _90 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _90) + 64
            u = mem[64] + 64
            while idx < _90:
                mem[u] = t + -_89 - 64
                _157 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_157 + 44 len 20]
                mem[t + 64] = mem[_157 + 76 len 20]
                _166 = mem[_157 + 96]
                mem[t + 96] = 288
                _168 = mem[_166]
                mem[t + 288] = mem[_166]
                v = 0
                w = _166 + 32
                x = t + 320
                while v < _168:
                    _342 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_342 + 32]
                    if mem[_342 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_342 + 64]
                    mem[x + 96] = mem[_342 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _350 = mem[_157 + 128]
                mem[t + 128] = (128 * _168) + 320
                _362 = mem[_350]
                mem[t + (128 * _168) + 320] = mem[_350]
                v = 0
                w = _350 + 32
                x = t + (128 * _168) + 352
                while v < _362:
                    _509 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_509 + 32]
                    if mem[_509 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_509 + 64]
                    mem[x + 96] = mem[_509 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_157 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_157 + 160]
                mem[t + 192] = mem[_157 + 192]
                mem[t + 224] = mem[_157 + 224]
                mem[t + 256] = mem[_157 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _168) + (128 * _362) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 448
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 160] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 192] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 224] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 256] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 288] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 320] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 352] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 384] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 416] = 0
        mem[var20002] = var20001
        if not var20003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _354 = sha3(mem[(32 * idx) + 128], 4)
                _355 = mem[64]
                mem[64] = mem[64] + 288
                mem[_355] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_355 + 32] = stor1[_354]
                mem[_355 + 64] = stor2[_354]
                _356 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_354]) + 32
                mem[_356] = stor3[_354]
                t = _356 + 32
                s = 0
                while s < stor3[_354]:
                    mem[0] = _354 + 3
                    _519 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_519] = address(stor[sha3(_354 + 3) + (4 * s)])
                    mem[_519 + 32] = uint256(stor[sha3(_354 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_354 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_519 + 64] = uint8(stor[sha3(_354 + 3) + (4 * s) + 2])
                    mem[_519 + 96] = uint256(stor[sha3(_354 + 3) + (4 * s) + 3])
                    mem[t] = _519
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_355 + 96] = _356
                _517 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_354].field_0)) + 32
                mem[_517] = uint256(stor4[_354].field_0)
                t = _517 + 32
                s = 0
                while s < uint256(stor4[_354].field_0):
                    mem[0] = _354 + 4
                    _736 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_736] = address(stor[sha3(_354 + 4) + (4 * s)])
                    mem[_736 + 32] = uint256(stor[sha3(_354 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_354 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_736 + 64] = uint8(stor[sha3(_354 + 4) + (4 * s) + 2])
                    mem[_736 + 96] = uint256(stor[sha3(_354 + 4) + (4 * s) + 3])
                    mem[t] = _736
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_355 + 128] = _517
                if uint8(stor5[_354].field_0) > 3:
                    revert with 0, 33
                mem[_355 + 160] = uint8(stor5[_354].field_0)
                mem[_355 + 192] = stor6[_354]
                mem[_355 + 224] = stor7[_354]
                mem[_355 + 256] = stor8[_354]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _355
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _364 = mem[64]
            mem[mem[64]] = 32
            _367 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _367) + 64
            u = mem[64] + 64
            while idx < _367:
                mem[u] = t + -_364 - 64
                _514 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_514 + 44 len 20]
                mem[t + 64] = mem[_514 + 76 len 20]
                _531 = mem[_514 + 96]
                mem[t + 96] = 288
                _536 = mem[_531]
                mem[t + 288] = mem[_531]
                v = 0
                w = _531 + 32
                x = t + 320
                while v < _536:
                    _731 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_731 + 32]
                    if mem[_731 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_731 + 64]
                    mem[x + 96] = mem[_731 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _749 = mem[_514 + 128]
                mem[t + 128] = (128 * _536) + 320
                _759 = mem[_749]
                mem[t + (128 * _536) + 320] = mem[_749]
                v = 0
                w = _749 + 32
                x = t + (128 * _536) + 352
                while v < _759:
                    _923 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_923 + 32]
                    if mem[_923 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_923 + 64]
                    mem[x + 96] = mem[_923 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_514 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_514 + 160]
                mem[t + 192] = mem[_514 + 192]
                mem[t + 224] = mem[_514 + 224]
                mem[t + 256] = mem[_514 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _536) + (128 * _759) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 736
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 448] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 480] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 512] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 544] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 576] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 608] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 640] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 672] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 704] = 0
        mem[var24002] = var24001
        if not var24003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _746 = sha3(mem[(32 * idx) + 128], 4)
                _747 = mem[64]
                mem[64] = mem[64] + 288
                mem[_747] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_747 + 32] = stor1[_746]
                mem[_747 + 64] = stor2[_746]
                _748 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_746]) + 32
                mem[_748] = stor3[_746]
                t = _748 + 32
                s = 0
                while s < stor3[_746]:
                    mem[0] = _746 + 3
                    _922 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_922] = address(stor[sha3(_746 + 3) + (4 * s)])
                    mem[_922 + 32] = uint256(stor[sha3(_746 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_746 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_922 + 64] = uint8(stor[sha3(_746 + 3) + (4 * s) + 2])
                    mem[_922 + 96] = uint256(stor[sha3(_746 + 3) + (4 * s) + 3])
                    mem[t] = _922
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_747 + 96] = _748
                _920 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_746].field_0)) + 32
                mem[_920] = uint256(stor4[_746].field_0)
                t = _920 + 32
                s = 0
                while s < uint256(stor4[_746].field_0):
                    mem[0] = _746 + 4
                    _1152 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1152] = address(stor[sha3(_746 + 4) + (4 * s)])
                    mem[_1152 + 32] = uint256(stor[sha3(_746 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_746 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1152 + 64] = uint8(stor[sha3(_746 + 4) + (4 * s) + 2])
                    mem[_1152 + 96] = uint256(stor[sha3(_746 + 4) + (4 * s) + 3])
                    mem[t] = _1152
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_747 + 128] = _920
                if uint8(stor5[_746].field_0) > 3:
                    revert with 0, 33
                mem[_747 + 160] = uint8(stor5[_746].field_0)
                mem[_747 + 192] = stor6[_746]
                mem[_747 + 224] = stor7[_746]
                mem[_747 + 256] = stor8[_746]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _747
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _758 = mem[64]
            mem[mem[64]] = 32
            _765 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _765) + 64
            u = mem[64] + 64
            while idx < _765:
                mem[u] = t + -_758 - 64
                _917 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_917 + 44 len 20]
                mem[t + 64] = mem[_917 + 76 len 20]
                _940 = mem[_917 + 96]
                mem[t + 96] = 288
                _949 = mem[_940]
                mem[t + 288] = mem[_940]
                v = 0
                w = _940 + 32
                x = t + 320
                while v < _949:
                    _1147 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1147 + 32]
                    if mem[_1147 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1147 + 64]
                    mem[x + 96] = mem[_1147 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _1165 = mem[_917 + 128]
                mem[t + 128] = (128 * _949) + 320
                _1175 = mem[_1165]
                mem[t + (128 * _949) + 320] = mem[_1165]
                v = 0
                w = _1165 + 32
                x = t + (128 * _949) + 352
                while v < _1175:
                    _1339 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1339 + 32]
                    if mem[_1339 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1339 + 64]
                    mem[x + 96] = mem[_1339 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_917 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_917 + 160]
                mem[t + 192] = mem[_917 + 192]
                mem[t + 224] = mem[_917 + 224]
                mem[t + 256] = mem[_917 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _949) + (128 * _1175) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 1024
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 736] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 768] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 800] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 832] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 864] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 896] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 928] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 960] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 992] = 0
        mem[var28002] = var28001
        if not var28003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _1162 = sha3(mem[(32 * idx) + 128], 4)
                _1163 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1163] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_1163 + 32] = stor1[_1162]
                mem[_1163 + 64] = stor2[_1162]
                _1164 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_1162]) + 32
                mem[_1164] = stor3[_1162]
                t = _1164 + 32
                s = 0
                while s < stor3[_1162]:
                    mem[0] = _1162 + 3
                    _1338 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1338] = address(stor[sha3(_1162 + 3) + (4 * s)])
                    mem[_1338 + 32] = uint256(stor[sha3(_1162 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_1162 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1338 + 64] = uint8(stor[sha3(_1162 + 3) + (4 * s) + 2])
                    mem[_1338 + 96] = uint256(stor[sha3(_1162 + 3) + (4 * s) + 3])
                    mem[t] = _1338
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1163 + 96] = _1164
                _1336 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_1162].field_0)) + 32
                mem[_1336] = uint256(stor4[_1162].field_0)
                t = _1336 + 32
                s = 0
                while s < uint256(stor4[_1162].field_0):
                    mem[0] = _1162 + 4
                    _1568 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1568] = address(stor[sha3(_1162 + 4) + (4 * s)])
                    mem[_1568 + 32] = uint256(stor[sha3(_1162 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_1162 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1568 + 64] = uint8(stor[sha3(_1162 + 4) + (4 * s) + 2])
                    mem[_1568 + 96] = uint256(stor[sha3(_1162 + 4) + (4 * s) + 3])
                    mem[t] = _1568
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1163 + 128] = _1336
                if uint8(stor5[_1162].field_0) > 3:
                    revert with 0, 33
                mem[_1163 + 160] = uint8(stor5[_1162].field_0)
                mem[_1163 + 192] = stor6[_1162]
                mem[_1163 + 224] = stor7[_1162]
                mem[_1163 + 256] = stor8[_1162]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _1163
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1174 = mem[64]
            mem[mem[64]] = 32
            _1181 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _1181) + 64
            u = mem[64] + 64
            while idx < _1181:
                mem[u] = t + -_1174 - 64
                _1333 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1333 + 44 len 20]
                mem[t + 64] = mem[_1333 + 76 len 20]
                _1356 = mem[_1333 + 96]
                mem[t + 96] = 288
                _1365 = mem[_1356]
                mem[t + 288] = mem[_1356]
                v = 0
                w = _1356 + 32
                x = t + 320
                while v < _1365:
                    _1563 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1563 + 32]
                    if mem[_1563 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1563 + 64]
                    mem[x + 96] = mem[_1563 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _1581 = mem[_1333 + 128]
                mem[t + 128] = (128 * _1365) + 320
                _1591 = mem[_1581]
                mem[t + (128 * _1365) + 320] = mem[_1581]
                v = 0
                w = _1581 + 32
                x = t + (128 * _1365) + 352
                while v < _1591:
                    _1755 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1755 + 32]
                    if mem[_1755 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1755 + 64]
                    mem[x + 96] = mem[_1755 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_1333 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_1333 + 160]
                mem[t + 192] = mem[_1333 + 192]
                mem[t + 224] = mem[_1333 + 224]
                mem[t + 256] = mem[_1333 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _1365) + (128 * _1591) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 1312
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1024] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1056] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1088] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1120] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1152] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1184] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1216] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1248] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1280] = 0
        mem[var32002] = var32001
        if not var32003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _1578 = sha3(mem[(32 * idx) + 128], 4)
                _1579 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1579] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_1579 + 32] = stor1[_1578]
                mem[_1579 + 64] = stor2[_1578]
                _1580 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_1578]) + 32
                mem[_1580] = stor3[_1578]
                t = _1580 + 32
                s = 0
                while s < stor3[_1578]:
                    mem[0] = _1578 + 3
                    _1754 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1754] = address(stor[sha3(_1578 + 3) + (4 * s)])
                    mem[_1754 + 32] = uint256(stor[sha3(_1578 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_1578 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1754 + 64] = uint8(stor[sha3(_1578 + 3) + (4 * s) + 2])
                    mem[_1754 + 96] = uint256(stor[sha3(_1578 + 3) + (4 * s) + 3])
                    mem[t] = _1754
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1579 + 96] = _1580
                _1752 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_1578].field_0)) + 32
                mem[_1752] = uint256(stor4[_1578].field_0)
                t = _1752 + 32
                s = 0
                while s < uint256(stor4[_1578].field_0):
                    mem[0] = _1578 + 4
                    _1984 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1984] = address(stor[sha3(_1578 + 4) + (4 * s)])
                    mem[_1984 + 32] = uint256(stor[sha3(_1578 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_1578 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_1984 + 64] = uint8(stor[sha3(_1578 + 4) + (4 * s) + 2])
                    mem[_1984 + 96] = uint256(stor[sha3(_1578 + 4) + (4 * s) + 3])
                    mem[t] = _1984
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1579 + 128] = _1752
                if uint8(stor5[_1578].field_0) > 3:
                    revert with 0, 33
                mem[_1579 + 160] = uint8(stor5[_1578].field_0)
                mem[_1579 + 192] = stor6[_1578]
                mem[_1579 + 224] = stor7[_1578]
                mem[_1579 + 256] = stor8[_1578]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _1579
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1590 = mem[64]
            mem[mem[64]] = 32
            _1597 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _1597) + 64
            u = mem[64] + 64
            while idx < _1597:
                mem[u] = t + -_1590 - 64
                _1749 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1749 + 44 len 20]
                mem[t + 64] = mem[_1749 + 76 len 20]
                _1772 = mem[_1749 + 96]
                mem[t + 96] = 288
                _1781 = mem[_1772]
                mem[t + 288] = mem[_1772]
                v = 0
                w = _1772 + 32
                x = t + 320
                while v < _1781:
                    _1979 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1979 + 32]
                    if mem[_1979 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_1979 + 64]
                    mem[x + 96] = mem[_1979 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _1997 = mem[_1749 + 128]
                mem[t + 128] = (128 * _1781) + 320
                _2007 = mem[_1997]
                mem[t + (128 * _1781) + 320] = mem[_1997]
                v = 0
                w = _1997 + 32
                x = t + (128 * _1781) + 352
                while v < _2007:
                    _2171 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_2171 + 32]
                    if mem[_2171 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_2171 + 64]
                    mem[x + 96] = mem[_2171 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_1749 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_1749 + 160]
                mem[t + 192] = mem[_1749 + 192]
                mem[t + 224] = mem[_1749 + 224]
                mem[t + 256] = mem[_1749 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _1781) + (128 * _2007) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 1600
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1312] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1344] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1376] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1408] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1440] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1472] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1504] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1536] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1568] = 0
        mem[var36002] = var36001
        if not var36003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _1994 = sha3(mem[(32 * idx) + 128], 4)
                _1995 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1995] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_1995 + 32] = stor1[_1994]
                mem[_1995 + 64] = stor2[_1994]
                _1996 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_1994]) + 32
                mem[_1996] = stor3[_1994]
                t = _1996 + 32
                s = 0
                while s < stor3[_1994]:
                    mem[0] = _1994 + 3
                    _2170 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2170] = address(stor[sha3(_1994 + 3) + (4 * s)])
                    mem[_2170 + 32] = uint256(stor[sha3(_1994 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_1994 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_2170 + 64] = uint8(stor[sha3(_1994 + 3) + (4 * s) + 2])
                    mem[_2170 + 96] = uint256(stor[sha3(_1994 + 3) + (4 * s) + 3])
                    mem[t] = _2170
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1995 + 96] = _1996
                _2168 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_1994].field_0)) + 32
                mem[_2168] = uint256(stor4[_1994].field_0)
                t = _2168 + 32
                s = 0
                while s < uint256(stor4[_1994].field_0):
                    mem[0] = _1994 + 4
                    _2400 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2400] = address(stor[sha3(_1994 + 4) + (4 * s)])
                    mem[_2400 + 32] = uint256(stor[sha3(_1994 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_1994 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_2400 + 64] = uint8(stor[sha3(_1994 + 4) + (4 * s) + 2])
                    mem[_2400 + 96] = uint256(stor[sha3(_1994 + 4) + (4 * s) + 3])
                    mem[t] = _2400
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_1995 + 128] = _2168
                if uint8(stor5[_1994].field_0) > 3:
                    revert with 0, 33
                mem[_1995 + 160] = uint8(stor5[_1994].field_0)
                mem[_1995 + 192] = stor6[_1994]
                mem[_1995 + 224] = stor7[_1994]
                mem[_1995 + 256] = stor8[_1994]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _1995
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2006 = mem[64]
            mem[mem[64]] = 32
            _2013 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _2013) + 64
            u = mem[64] + 64
            while idx < _2013:
                mem[u] = t + -_2006 - 64
                _2165 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2165 + 44 len 20]
                mem[t + 64] = mem[_2165 + 76 len 20]
                _2188 = mem[_2165 + 96]
                mem[t + 96] = 288
                _2197 = mem[_2188]
                mem[t + 288] = mem[_2188]
                v = 0
                w = _2188 + 32
                x = t + 320
                while v < _2197:
                    _2395 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_2395 + 32]
                    if mem[_2395 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_2395 + 64]
                    mem[x + 96] = mem[_2395 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _2413 = mem[_2165 + 128]
                mem[t + 128] = (128 * _2197) + 320
                _2423 = mem[_2413]
                mem[t + (128 * _2197) + 320] = mem[_2413]
                v = 0
                w = _2413 + 32
                x = t + (128 * _2197) + 352
                while v < _2423:
                    _2587 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_2587 + 32]
                    if mem[_2587 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_2587 + 64]
                    mem[x + 96] = mem[_2587 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_2165 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_2165 + 160]
                mem[t + 192] = mem[_2165 + 192]
                mem[t + 224] = mem[_2165 + 224]
                mem[t + 256] = mem[_2165 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _2197) + (128 * _2423) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 1888
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1600] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1632] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1664] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1696] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1728] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1760] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1792] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1824] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1856] = 0
        mem[var40002] = var40001
        if not var40003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _2410 = sha3(mem[(32 * idx) + 128], 4)
                _2411 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2411] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_2411 + 32] = stor1[_2410]
                mem[_2411 + 64] = stor2[_2410]
                _2412 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_2410]) + 32
                mem[_2412] = stor3[_2410]
                t = _2412 + 32
                s = 0
                while s < stor3[_2410]:
                    mem[0] = _2410 + 3
                    _2586 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2586] = address(stor[sha3(_2410 + 3) + (4 * s)])
                    mem[_2586 + 32] = uint256(stor[sha3(_2410 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_2410 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_2586 + 64] = uint8(stor[sha3(_2410 + 3) + (4 * s) + 2])
                    mem[_2586 + 96] = uint256(stor[sha3(_2410 + 3) + (4 * s) + 3])
                    mem[t] = _2586
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2411 + 96] = _2412
                _2584 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_2410].field_0)) + 32
                mem[_2584] = uint256(stor4[_2410].field_0)
                t = _2584 + 32
                s = 0
                while s < uint256(stor4[_2410].field_0):
                    mem[0] = _2410 + 4
                    _2816 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2816] = address(stor[sha3(_2410 + 4) + (4 * s)])
                    mem[_2816 + 32] = uint256(stor[sha3(_2410 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_2410 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_2816 + 64] = uint8(stor[sha3(_2410 + 4) + (4 * s) + 2])
                    mem[_2816 + 96] = uint256(stor[sha3(_2410 + 4) + (4 * s) + 3])
                    mem[t] = _2816
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2411 + 128] = _2584
                if uint8(stor5[_2410].field_0) > 3:
                    revert with 0, 33
                mem[_2411 + 160] = uint8(stor5[_2410].field_0)
                mem[_2411 + 192] = stor6[_2410]
                mem[_2411 + 224] = stor7[_2410]
                mem[_2411 + 256] = stor8[_2410]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _2411
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2422 = mem[64]
            mem[mem[64]] = 32
            _2429 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _2429) + 64
            u = mem[64] + 64
            while idx < _2429:
                mem[u] = t + -_2422 - 64
                _2581 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2581 + 44 len 20]
                mem[t + 64] = mem[_2581 + 76 len 20]
                _2604 = mem[_2581 + 96]
                mem[t + 96] = 288
                _2613 = mem[_2604]
                mem[t + 288] = mem[_2604]
                v = 0
                w = _2604 + 32
                x = t + 320
                while v < _2613:
                    _2811 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_2811 + 32]
                    if mem[_2811 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_2811 + 64]
                    mem[x + 96] = mem[_2811 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _2829 = mem[_2581 + 128]
                mem[t + 128] = (128 * _2613) + 320
                _2839 = mem[_2829]
                mem[t + (128 * _2613) + 320] = mem[_2829]
                v = 0
                w = _2829 + 32
                x = t + (128 * _2613) + 352
                while v < _2839:
                    _3003 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_3003 + 32]
                    if mem[_3003 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_3003 + 64]
                    mem[x + 96] = mem[_3003 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_2581 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_2581 + 160]
                mem[t + 192] = mem[_2581 + 192]
                mem[t + 224] = mem[_2581 + 224]
                mem[t + 256] = mem[_2581 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _2613) + (128 * _2839) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 2176
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1888] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1920] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1952] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 1984] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2016] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2048] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2080] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2112] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2144] = 0
        mem[var44002] = var44001
        if not var44003 - 1:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _2826 = sha3(mem[(32 * idx) + 128], 4)
                _2827 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2827] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_2827 + 32] = stor1[_2826]
                mem[_2827 + 64] = stor2[_2826]
                _2828 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_2826]) + 32
                mem[_2828] = stor3[_2826]
                t = _2828 + 32
                s = 0
                while s < stor3[_2826]:
                    mem[0] = _2826 + 3
                    _3002 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3002] = address(stor[sha3(_2826 + 3) + (4 * s)])
                    mem[_3002 + 32] = uint256(stor[sha3(_2826 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_2826 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_3002 + 64] = uint8(stor[sha3(_2826 + 3) + (4 * s) + 2])
                    mem[_3002 + 96] = uint256(stor[sha3(_2826 + 3) + (4 * s) + 3])
                    mem[t] = _3002
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2827 + 96] = _2828
                _3000 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_2826].field_0)) + 32
                mem[_3000] = uint256(stor4[_2826].field_0)
                t = _3000 + 32
                s = 0
                while s < uint256(stor4[_2826].field_0):
                    mem[0] = _2826 + 4
                    _3232 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3232] = address(stor[sha3(_2826 + 4) + (4 * s)])
                    mem[_3232 + 32] = uint256(stor[sha3(_2826 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_2826 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_3232 + 64] = uint8(stor[sha3(_2826 + 4) + (4 * s) + 2])
                    mem[_3232 + 96] = uint256(stor[sha3(_2826 + 4) + (4 * s) + 3])
                    mem[t] = _3232
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_2827 + 128] = _3000
                if uint8(stor5[_2826].field_0) > 3:
                    revert with 0, 33
                mem[_2827 + 160] = uint8(stor5[_2826].field_0)
                mem[_2827 + 192] = stor6[_2826]
                mem[_2827 + 224] = stor7[_2826]
                mem[_2827 + 256] = stor8[_2826]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _2827
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2838 = mem[64]
            mem[mem[64]] = 32
            _2845 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor5[address(arg1)].field_0)) + 160
            t = mem[64] + (32 * _2845) + 64
            u = mem[64] + 64
            while idx < _2845:
                mem[u] = t + -_2838 - 64
                _2997 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2997 + 44 len 20]
                mem[t + 64] = mem[_2997 + 76 len 20]
                _3020 = mem[_2997 + 96]
                mem[t + 96] = 288
                _3029 = mem[_3020]
                mem[t + 288] = mem[_3020]
                v = 0
                w = _3020 + 32
                x = t + 320
                while v < _3029:
                    _3227 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_3227 + 32]
                    if mem[_3227 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_3227 + 64]
                    mem[x + 96] = mem[_3227 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                _3245 = mem[_2997 + 128]
                mem[t + 128] = (128 * _3029) + 320
                _3255 = mem[_3245]
                mem[t + (128 * _3029) + 320] = mem[_3245]
                v = 0
                w = _3245 + 32
                x = t + (128 * _3029) + 352
                while v < _3255:
                    _3419 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_3419 + 32]
                    if mem[_3419 + 64] >= 3:
                        revert with 0, 33
                    mem[x + 64] = mem[_3419 + 64]
                    mem[x + 96] = mem[_3419 + 96]
                    v = v + 1
                    w = w + 32
                    x = x + 128
                    continue 
                if mem[_2997 + 160] >= 4:
                    revert with 0, 33
                mem[t + 160] = mem[_2997 + 160]
                mem[t + 192] = mem[_2997 + 192]
                mem[t + 224] = mem[_2997 + 224]
                mem[t + 256] = mem[_2997 + 256]
                idx = idx + 1
                s = s + 32
                t = t + (128 * _3029) + (128 * _3255) + 352
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * uint256(stor5[address(arg1)].field_0)) + 2464
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2176] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2208] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2240] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2272] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2304] = 96
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2336] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2368] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2400] = 0
        mem[(64 * uint256(stor5[address(arg1)].field_0)) + 2432] = 0
        mem[var48002] = var48001
        if var48003 - 1:
            if var52003 - 1:
                # nil
            else:
                if var67001 >= uint256(stor5[address(arg1)].field_0):
                    # nil
                else:
                    if var67001 >= uint256(stor5[address(arg1)].field_0):
                        revert with 0, 50
                    # nil
        else:
            idx = 0
            while idx < uint256(stor5[address(arg1)].field_0):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                _3242 = sha3(mem[(32 * idx) + 128], 4)
                _3243 = mem[64]
                mem[64] = mem[64] + 288
                mem[_3243] = uint256(stor4[mem[(32 * idx) + 128]].field_0)
                mem[_3243 + 32] = stor1[_3242]
                mem[_3243 + 64] = stor2[_3242]
                _3244 = mem[64]
                mem[64] = mem[64] + (32 * stor3[_3242]) + 32
                mem[_3244] = stor3[_3242]
                t = _3244 + 32
                s = 0
                while s < stor3[_3242]:
                    mem[0] = _3242 + 3
                    _3418 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3418] = address(stor[sha3(_3242 + 3) + (4 * s)])
                    mem[_3418 + 32] = uint256(stor[sha3(_3242 + 3) + (4 * s) + 1])
                    if uint8(stor[sha3(_3242 + 3) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_3418 + 64] = uint8(stor[sha3(_3242 + 3) + (4 * s) + 2])
                    mem[_3418 + 96] = uint256(stor[sha3(_3242 + 3) + (4 * s) + 3])
                    mem[t] = _3418
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_3243 + 96] = _3244
                _3416 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor4[_3242].field_0)) + 32
                mem[_3416] = uint256(stor4[_3242].field_0)
                t = _3416 + 32
                s = 0
                while s < uint256(stor4[_3242].field_0):
                    mem[0] = _3242 + 4
                    _3648 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3648] = address(stor[sha3(_3242 + 4) + (4 * s)])
                    mem[_3648 + 32] = uint256(stor[sha3(_3242 + 4) + (4 * s) + 1])
                    if uint8(stor[sha3(_3242 + 4) + (4 * s) + 2]) > 2:
                        revert with 0, 33
                    mem[_3648 + 64] = uint8(stor[sha3(_3242 + 4) + (4 * s) + 2])
                    mem[_3648 + 96] = uint256(stor[sha3(_3242 + 4) + (4 * s) + 3])
                    mem[t] = _3648
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_3243 + 128] = _3416
                if uint8(stor5[_3242].field_0) > 3:
                    revert with 0, 33
                mem[_3243 + 160] = uint8(stor5[_3242].field_0)
                mem[_3243 + 192] = stor6[_3242]
                mem[_3243 + 224] = stor7[_3242]
                mem[_3243 + 256] = stor8[_3242]
                if idx >= mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor5[address(arg1)].field_0)) + 160] = _3243
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _3261 = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor5[address(arg1)].field_0)) + 128]
            if var70001 >= _3261:
                return memory
                  from mem[64]
                   len var70003 - mem[64]
            mem[var70005] = var70003 + -mem[64] - 64
            _3413 = mem[var70002]
            mem[var70003] = mem[mem[var70002]]
            mem[var70003 + 32] = mem[_3413 + 44 len 20]
            mem[var70003 + 64] = mem[_3413 + 76 len 20]
            _3436 = mem[_3413 + 96]
            mem[var70003 + 96] = 288
            _3445 = mem[_3436]
            mem[var70003 + 288] = mem[_3436]
            idx = 0
            s = _3436 + 32
            t = var70003 + 320
            while idx < _3445:
                _3643 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3643 + 32]
                if mem[_3643 + 64] >= 3:
                    revert with 0, 33
                mem[t + 64] = mem[_3643 + 64]
                mem[t + 96] = mem[_3643 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            # nil
}



}
