contract main {




// =====================  Runtime code  =====================


const name = 'Utilitybia', 0

const sub_b2e68606(?) = 500

const sub_bc86bd78(?) = 500


address owner;
array of address sub_2d4a2146;
array of struct auctions;
address treasuryDAOAddress;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403025;

function totalAuctions() {
    return auctions.length
}

function sub_2d4a2146(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2d4a2146.length
    return sub_2d4a2146[arg1]
}

function totalUtilities() {
    return sub_2d4a2146.length
}

function auctions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < auctions.length
    return auctions[arg1].field_0, auctions[arg1].field_256, auctions[arg1].field_512, auctions[arg1].field_768
}

function owner() {
    return owner
}

function treasuryDAO() {
    return treasuryDAOAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a46eddcf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Treasury DAO invalid'
    treasuryDAOAddress = address(arg1)
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not treasuryDAOAddress:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(treasuryDAOAddress)
        call treasuryDAOAddress.0xb361e198 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f22b0169(?) {
    require calldata.size - 4 >= 64
    if arg1 >= auctions.length:
        revert with 0, 50
    if auctions[arg1].field_256 != msg.sender:
        revert with 0, 'Permission denied'
    if arg1 >= auctions.length:
        revert with 0, 50
    if auctions[arg1].field_768:
        revert with 0, 'Auction passed'
    if arg1 >= auctions.length:
        revert with 0, 50
    auctions[arg1].field_512 = arg2
    emit 0xba6b3997: arg1, auctions[arg1].field_0, auctions[arg1].field_256, auctions[arg1].field_512, auctions[arg1].field_768
}

function sub_33cd1da3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        revert with 0, 'Owner invalid'
    require ext_code.size(address(arg1))
    call address(arg1).0xf2fde38b with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2d4a2146.length++
    sub_2d4a2146[sub_2d4a2146.length] = address(arg1)
    if sub_2d4a2146.length < 1:
        revert with 0, 17
    emit 0xa3576ea6: (sub_2d4a2146.length - 1), address(arg1)
}

function cancelAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= auctions.length:
        revert with 0, 50
    if auctions[arg1].field_256 != msg.sender:
        revert with 0, 'Permission denied'
    if arg1 >= auctions.length:
        revert with 0, 50
    if auctions[arg1].field_768:
        revert with 0, 'Auction passed'
    if arg1 >= auctions.length:
        revert with 0, 50
    auctions[arg1].field_768 = msg.sender
    if auctions[arg1].field_0 >= sub_2d4a2146.length:
        revert with 0, 50
    require ext_code.size(sub_2d4a2146[stor2[arg1].field_0])
    call sub_2d4a2146[stor2[arg1].field_0].0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= auctions.length:
        revert with 0, 50
    emit 0xba6b3997: arg1, auctions[arg1].field_0, auctions[arg1].field_256, auctions[arg1].field_512, auctions[arg1].field_768
}

function sub_27c4bd6b(?) {
    require calldata.size - 4 >= 64
    if arg1 >= sub_2d4a2146.length:
        revert with 0, 50
    require ext_code.size(sub_2d4a2146[arg1])
    staticcall sub_2d4a2146[arg1].0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Owner invalid'
    if arg1 >= sub_2d4a2146.length:
        revert with 0, 50
    require ext_code.size(sub_2d4a2146[arg1])
    call sub_2d4a2146[arg1].0xf2fde38b with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    auctions.length++
    auctions[auctions.length].field_0 = arg1
    stor4057[stor2.length] = msg.sender
    stor4057[stor2.length] = arg2
    stor4057[stor2.length].field_0 = 0
    stor4057[stor2.length].field_256 = 0
    emit 0xf82776b6: auctions.length, arg1, msg.sender, arg2, 0
    return auctions.length
}

function bidAuction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= auctions.length:
        revert with 0, 50
    if auctions[arg1].field_768:
        revert with 0, 'Auction passed'
    if arg1 >= auctions.length:
        revert with 0, 50
    if msg.value < auctions[arg1].field_512:
        revert with 0, 'Price invalid'
    if arg1 >= auctions.length:
        revert with 0, 50
    auctions[arg1].field_768 = msg.sender
    if msg.value and 9500 > -1 / msg.value:
        revert with 0, 17
    call auctions[arg1].field_256 with:
       value 9500 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= auctions.length:
        revert with 0, 50
    if auctions[arg1].field_0 >= sub_2d4a2146.length:
        revert with 0, 50
    require ext_code.size(sub_2d4a2146[stor2[arg1].field_0])
    call sub_2d4a2146[stor2[arg1].field_0].0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= auctions.length:
        revert with 0, 50
    emit 0xba6b3997: arg1, auctions[arg1].field_0, auctions[arg1].field_256, auctions[arg1].field_512, auctions[arg1].field_768
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xad18e97e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xad18e97e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return treasuryDAOAddress
            if unknown_0xb2e68606(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 500
            if unknown_0xbc86bd78(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 500
            if uint32(call.func_hash) >> 224 != unknown_0xf22b0169(?????):
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
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
                require not msg.value
                require calldata.size - 4 >= 64
                if arg1 >= auctions.length:
                    revert with 0, 50
                if auctions[arg1].field_256 != msg.sender:
                    revert with 0, 'Permission denied'
                if arg1 >= auctions.length:
                    revert with 0, 50
                if auctions[arg1].field_768:
                    revert with 0, 'Auction passed'
                if arg1 >= auctions.length:
                    revert with 0, 50
                auctions[arg1].field_512 = arg2
                emit 0xba6b3997: arg1, auctions[arg1].field_0, auctions[arg1].field_256, auctions[arg1].field_512, auctions[arg1].field_768
        else:
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x96b5a755(?????):
                    require unknown_0xa46eddcf(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Treasury DAO invalid'
                    treasuryDAOAddress = address(arg1)
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if arg1 >= auctions.length:
                        revert with 0, 50
                    if auctions[arg1].field_256 != msg.sender:
                        revert with 0, 'Permission denied'
                    if arg1 >= auctions.length:
                        revert with 0, 50
                    if auctions[arg1].field_768:
                        revert with 0, 'Auction passed'
                    if arg1 >= auctions.length:
                        revert with 0, 50
                    auctions[arg1].field_768 = msg.sender
                    if auctions[arg1].field_0 >= sub_2d4a2146.length:
                        revert with 0, 50
                    require ext_code.size(sub_2d4a2146[stor2[arg1].field_0])
                    call sub_2d4a2146[stor2[arg1].field_0].0xf2fde38b with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 >= auctions.length:
                        revert with 0, 50
                    emit 0xba6b3997: arg1, auctions[arg1].field_0, auctions[arg1].field_256, auctions[arg1].field_512, auctions[arg1].field_768
    if unknown_0x332eec45(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x332eec45(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_2d4a2146.length
        if unknown_0x33cd1da3(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(arg2):
                revert with 0, 'Owner invalid'
            require ext_code.size(address(arg1))
            call address(arg1).0xf2fde38b with:
                 gas gas_remaining wei
                args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_2d4a2146.length++
            sub_2d4a2146[sub_2d4a2146.length] = address(arg1)
            if sub_2d4a2146.length < 1:
                revert with 0, 17
            emit 0xa3576ea6: (sub_2d4a2146.length - 1), address(arg1)
        else:
            if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not treasuryDAOAddress:
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(treasuryDAOAddress)
                    call treasuryDAOAddress.0xb361e198 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x571a26a0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < auctions.length
                    return auctions[arg1].field_0, auctions[arg1].field_256, auctions[arg1].field_512, auctions[arg1].field_768
                require unknown_0x64a7d7c7(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 32
                if arg1 >= auctions.length:
                    revert with 0, 50
                if auctions[arg1].field_768:
                    revert with 0, 'Auction passed'
                if arg1 >= auctions.length:
                    revert with 0, 50
                if msg.value < auctions[arg1].field_512:
                    revert with 0, 'Price invalid'
                if arg1 >= auctions.length:
                    revert with 0, 50
                auctions[arg1].field_768 = msg.sender
                if msg.value and 9500 > -1 / msg.value:
                    revert with 0, 17
                call auctions[arg1].field_256 with:
                   value 9500 * msg.value / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 >= auctions.length:
                    revert with 0, 50
                if auctions[arg1].field_0 >= sub_2d4a2146.length:
                    revert with 0, 50
                require ext_code.size(sub_2d4a2146[stor2[arg1].field_0])
                call sub_2d4a2146[stor2[arg1].field_0].0xf2fde38b with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 >= auctions.length:
                    revert with 0, 50
                emit 0xba6b3997: arg1, auctions[arg1].field_0, auctions[arg1].field_256, auctions[arg1].field_512, auctions[arg1].field_768
    if name() == uint32(call.func_hash) >> 224:
        require not msg.value
        return 'Utilitybia', 0
    if unknown_0x16002f4a(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
    else:
        if uint32(call.func_hash) >> 224 != unknown_0x27c4bd6b(?????):
            require unknown_0x2d4a2146(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 < sub_2d4a2146.length
            return sub_2d4a2146[arg1]
        require not msg.value
        require calldata.size - 4 >= 64
        if arg1 >= sub_2d4a2146.length:
            revert with 0, 50
        require ext_code.size(sub_2d4a2146[arg1])
        staticcall sub_2d4a2146[arg1].0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Owner invalid'
        if arg1 >= sub_2d4a2146.length:
            revert with 0, 50
        require ext_code.size(sub_2d4a2146[arg1])
        call sub_2d4a2146[arg1].0xf2fde38b with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        auctions.length++
        auctions[auctions.length].field_0 = arg1
        stor4057[stor2.length] = msg.sender
        stor4057[stor2.length] = arg2
        stor4057[stor2.length].field_0 = 0
        stor4057[stor2.length].field_256 = 0
        emit 0xf82776b6: auctions.length, arg1, msg.sender, arg2, 0
    return auctions.length
}



}
