contract main {




// =====================  Runtime code  =====================


address owner;
address v1Address;
address v2Address;
mapping of uint8 stor3;

function v1() {
    return v1Address
}

function swapped(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function v2() {
    return v2Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_07127168(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(bool(arg2))
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

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0:
        call owner with:
           value arg1 wei
             gas gas_remaining wei
    else:
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is ETH available to withdraw'
        call owner with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
}

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap() {
    if stor3[msg.sender]:
        revert with 0, 'already swapped V1 for V2'
    require ext_code.size(v1Address)
    staticcall v1Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'you do not have any V1 tokens'
    require ext_code.size(v2Address)
    staticcall v2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'not enough V2 liquidity to complete swap'
    stor3[msg.sender] = 1
    require ext_code.size(v1Address)
    call v1Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(v2Address)
    call v2Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x81c61090(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x81c61090(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor3[arg1])
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xf14210a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg1 > 0:
                    call owner with:
                       value arg1 wei
                         gas gas_remaining wei
                else:
                    if eth.balance(this.address) <= 0:
                        revert with 0, 'make sure there is ETH available to withdraw'
                    call owner with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    require unknown_0xf3acae3a(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return v2Address
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                owner = address(arg1)
                emit OwnershipTransferred(owner, address(arg1));
        else:
            if withdrawTokens(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg2:
                    if arg2 <= 0:
                        revert with 0, 'make sure there is a balance available to withdraw'
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, arg2
                else:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'make sure there is a balance available to withdraw'
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x07127168(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor3[address(arg1)] = uint8(bool(arg2))
                else:
                    if unknown_0x6854171d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return v1Address
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    else:
                        require unknown_0x8119c065(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if stor3[msg.sender]:
                            revert with 0, 'already swapped V1 for V2'
                        require ext_code.size(v1Address)
                        staticcall v1Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'you do not have any V1 tokens'
                        require ext_code.size(v2Address)
                        staticcall v2Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'not enough V2 liquidity to complete swap'
                        stor3[msg.sender] = 1
                        require ext_code.size(v1Address)
                        call v1Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(v2Address)
                        call v2Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
