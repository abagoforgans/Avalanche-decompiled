contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address sub_2e5aa898Address;
address sub_13764611Address;
address sub_bc56f370Address;

function sub_13764611(?) {
    return sub_13764611Address
}

function sub_2e5aa898(?) {
    return sub_2e5aa898Address
}

function owner() {
    return owner
}

function sub_bc56f370(?) {
    return sub_bc56f370Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_835c4ca6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_13764611Address = address(arg1)
    stor2 = address(arg1)
}

function sub_a50dedfc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e5aa898Address = address(arg1)
    stor1 = address(arg1)
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

function sub_7ea25ca1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c3e5ec28(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_bc56f370Address)
    call sub_bc56f370Address.0xb88d4fde with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg2), arg1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5dd12106(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_2e5aa898Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the wAvaxApes contract can call this function!'
    require ext_code.size(sub_bc56f370Address)
    call sub_bc56f370Address.0xb88d4fde with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg2), arg1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if sub_bc56f370Address != msg.sender:
        revert with 0, 'Only AvaxApes can be wrapped!'
    require ext_code.size(stor1)
    call stor1.mint(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0x7ea25ca1(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa50dedfc(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x7ea25ca1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x835c4ca6(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                    require not msg.value
                    return owner
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_13764611Address = address(arg1)
                stor2 = address(arg1)
        else:
            if unknown_0xa50dedfc(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_2e5aa898Address = address(arg1)
                stor1 = address(arg1)
            else:
                if unknown_0xbc56f370(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_bc56f370Address
                if unknown_0xc3e5ec28(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(sub_bc56f370Address)
                    call sub_bc56f370Address.0xb88d4fde with:
                         gas gas_remaining wei
                        args 0, uint32(this.address), address(arg2), arg1, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
    if unknown_0x13764611(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return sub_13764611Address
    if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
        if unknown_0x2e5aa898(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_2e5aa898Address
        if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            call owner with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            require ext_call.success
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x5dd12106(?????):
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg2 == address(arg2)
                if sub_2e5aa898Address != msg.sender:
                    revert with 0, 'Only the wAvaxApes contract can call this function!'
                require ext_code.size(sub_bc56f370Address)
                call sub_bc56f370Address.0xb88d4fde with:
                     gas gas_remaining wei
                    args 0, uint32(this.address), address(arg2), arg1, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 129 < 128 or ceil32(ceil32(arg4.length)) + 129 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if sub_bc56f370Address != msg.sender:
        revert with 0, 'Only AvaxApes can be wrapped!'
    require ext_code.size(stor1)
    call stor1.mint(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
