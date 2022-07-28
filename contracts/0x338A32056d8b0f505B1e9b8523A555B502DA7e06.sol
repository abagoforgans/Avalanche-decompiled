contract main {




// =====================  Runtime code  =====================


#
#  - sub_5c73cc3f(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address sub_ffe6e7d7Address;
address sub_a64fb0a6Address;
address sub_ddaa1196Address;
address sub_f604a5efAddress;
address sub_768450b4Address;
address sub_3ec4d4d6Address;
address sub_5bfb7508Address;

function sub_3ec4d4d6(?) payable {
    return sub_3ec4d4d6Address
}

function sub_5bfb7508(?) payable {
    return sub_5bfb7508Address
}

function sub_768450b4(?) payable {
    return sub_768450b4Address
}

function owner() payable {
    return owner
}

function sub_a64fb0a6(?) payable {
    return sub_a64fb0a6Address
}

function sub_ddaa1196(?) payable {
    return sub_ddaa1196Address
}

function sub_f604a5ef(?) payable {
    return sub_f604a5efAddress
}

function sub_ffe6e7d7(?) payable {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_46839571(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_5bfb7508Address)
    call sub_5bfb7508Address.settlePaymentForClaim(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg3), arg4, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf891e72d: arg1, arg2, address(arg3), arg4
    stor101 = 1
}

function sub_c673e248(?) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    if not arg5:
        revert with 0, 'S:5'
    if not arg6:
        revert with 0, 'S:6'
    if not arg7:
        revert with 0, 'S:7'
    sub_ffe6e7d7Address = arg1
    sub_a64fb0a6Address = arg2
    sub_ddaa1196Address = arg3
    sub_f604a5efAddress = arg4
    sub_768450b4Address = arg5
    sub_3ec4d4d6Address = arg6
    sub_5bfb7508Address = arg7
}

function sub_d92395df(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SFSTI: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 1
    stor101 = 1
}

function sub_320b30b0(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SFSTA: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 12
    stor101 = 1
}

function sub_2791e0ca(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 12:
        revert with 0, 'SFATC: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
    stor101 = 1
}

function sub_32b16a9c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 12:
        revert with 0, 'SFATI: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 1
    stor101 = 1
}

function sub_93583a22(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 8:
        revert with 0, 'STPR: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 10
    stor101 = 1
}

function sub_32527194(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 2:
        revert with 0, 'SFPFVTV: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 3
    require ext_code.size(sub_768450b4Address)
    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_768450b4Address)
    staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1ceac786: arg1, ext_call.return_data[0], ext_call.return_data[0]
    stor101 = 1
}

function sub_5dc9429c(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 12:
        revert with 0, 'SFATPFV: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 12:
        if ext_call.return_data[0] != 1:
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != 6:
                require ext_code.size(sub_3ec4d4d6Address)
                staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != 5:
                    revert with 0, 'STV: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    if arg2:
        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbaa7402e: arg1, ext_call.return_data[0], 8
    else:
        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, 9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbaa7402e: arg1, ext_call.return_data[0], 9
    if not arg2:
        require ext_code.size(sub_3ec4d4d6Address)
        staticcall sub_3ec4d4d6Address.0x5707add3 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3ec4d4d6Address)
        staticcall sub_3ec4d4d6Address.0x4bd54e40 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_ddaa1196Address)
        staticcall sub_ddaa1196Address.getAdjustedCoverStatus(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_ddaa1196Address)
        call sub_ddaa1196Address.setCoverStatus(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x54a3a739: ext_call.return_data[0], ext_call.return_data[0], 0, address(ext_call.return_data[0])
    stor101 = 1
}

function sub_378e2b39(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 10:
        revert with 0, 'STP: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 11
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x5707add3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x4bd54e40 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ddaa1196Address)
    call sub_ddaa1196Address.increaseCoverClaimedAmount(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ddaa1196Address)
    staticcall sub_ddaa1196Address.getCoverAmount(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ddaa1196Address)
    staticcall sub_ddaa1196Address.getCoverClaimedAmount(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'STP: 2'
    require ext_code.size(sub_ddaa1196Address)
    staticcall sub_ddaa1196Address.getAdjustedCoverStatus(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ddaa1196Address)
    if ext_call.return_data[0] != ext_call.return_data[0]:
        call sub_ddaa1196Address.setCoverStatus(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x54a3a739: ext_call.return_data[0], ext_call.return_data[0], 0, address(ext_call.return_data[0])
    else:
        call sub_ddaa1196Address.setCoverStatus(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x54a3a739: ext_call.return_data[0], ext_call.return_data[0], 3, address(ext_call.return_data[0])
    emit 0x2b5ecd06: arg1, arg2, ext_call.return_data[0]
    stor101 = 1
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor101 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor101 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor101 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor101 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}

function sub_41d48dec(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 6:
        revert with 0, 'SFCTV: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x9dd9ba6d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    if ext_call.return_data[0] > 0:
        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, 5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
    else:
        staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 12:
            if ext_call.return_data[0] != 1:
                require ext_code.size(sub_3ec4d4d6Address)
                staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != 6:
                    require ext_code.size(sub_3ec4d4d6Address)
                    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != 5:
                        revert with 0, 'STV: 1'
        require ext_code.size(sub_3ec4d4d6Address)
        if arg2:
            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: arg1, ext_call.return_data[0], 8
        else:
            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, 9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: arg1, ext_call.return_data[0], 9
        if not arg2:
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0x5707add3 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0x4bd54e40 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ddaa1196Address)
            staticcall sub_ddaa1196Address.getAdjustedCoverStatus(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ddaa1196Address)
            call sub_ddaa1196Address.setCoverStatus(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x54a3a739: ext_call.return_data[0], ext_call.return_data[0], 0, address(ext_call.return_data[0])
    stor101 = 1
}

function sub_6d994102(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'SFITPFV: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    if not arg6:
        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbaa7402e: 0, Mask(224, 0, arg1), ext_call.return_data[0], 2
    else:
        staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 12:
            if ext_call.return_data[0] != 1:
                require ext_code.size(sub_3ec4d4d6Address)
                staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != 6:
                    require ext_code.size(sub_3ec4d4d6Address)
                    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != 5:
                        revert with 0, 'STV: 1'
        require ext_code.size(sub_3ec4d4d6Address)
        if arg5:
            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: 0, Mask(224, 0, arg1), ext_call.return_data[0], 8
        else:
            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, 9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: 0, Mask(224, 0, arg1), ext_call.return_data[0], 9
        if not arg5:
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0x5707add3 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0x4bd54e40 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ddaa1196Address)
            staticcall sub_ddaa1196Address.getAdjustedCoverStatus(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ddaa1196Address)
            call sub_ddaa1196Address.setCoverStatus(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x54a3a739: 0, ext_call.return_data[4 len 28], ext_call.return_data[0], 0, address(ext_call.return_data[0])
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.0xc81d4516 with:
         gas gas_remaining wei
        args arg1, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x15b4fe5d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 260] = arg5
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 196] = 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 292] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = arg2.length + 160
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 324] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 192]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 388 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 224]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = floor32(arg2.length) + 192
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 356] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 224]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 420 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg5
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg6
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg2.length + 224
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit 0xfc30c887: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 448 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit 0xfc30c887: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = floor32(arg2.length) + 256
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit 0xfc30c887: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 480 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit 0xfc30c887: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
    stor101 = 1
}

function sub_4677defd(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 3:
        revert with 0, 'SFVTC: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0xa326f719 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not ext_call.return_data[0]:
        revert with 0, 'SFVTC: 2'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'SFVTC: 3'
    if ext_call.return_data[64] <= 0:
        if ext_call.return_data[96] <= 0:
            revert with 0, 'SFVTC: 3'
    require ext_code.size(sub_768450b4Address)
    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[32]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
            require ext_code.size(sub_768450b4Address)
            staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_768450b4Address)
            staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
        else:
            if ext_call.return_data[64] > ext_call.return_data[96]:
                require ext_code.size(sub_768450b4Address)
                staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] + ext_call.return_data[64] < ext_call.return_data[64]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    if ext_call.return_data[96] + ext_call.return_data[64] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[96] + ext_call.return_data[64]
                    require ext_code.size(sub_3ec4d4d6Address)
                    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_3ec4d4d6Address)
                    if 0 / ext_call.return_data[96] + ext_call.return_data[64] >= ext_call.return_data[0]:
                        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg1, 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
                    else:
                        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg1, 5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
                else:
                    if 10000 * ext_call.return_data[64] / ext_call.return_data[64] != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[224 len 4]
                    if ext_call.return_data[96] + ext_call.return_data[64] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[96] + ext_call.return_data[64]
                    require ext_code.size(sub_3ec4d4d6Address)
                    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_3ec4d4d6Address)
                    if 10000 * ext_call.return_data[64] / ext_call.return_data[96] + ext_call.return_data[64] >= ext_call.return_data[0]:
                        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg1, 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
                    else:
                        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg1, 5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
            else:
                if ext_call.return_data[64] >= ext_call.return_data[96]:
                    require ext_code.size(sub_3ec4d4d6Address)
                    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_3ec4d4d6Address)
                    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg1, 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
                else:
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[96] + ext_call.return_data[64] < ext_call.return_data[64]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[96] + ext_call.return_data[64] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[96] + ext_call.return_data[64]
                        require ext_code.size(sub_3ec4d4d6Address)
                        staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3ec4d4d6Address)
                        if 0 / ext_call.return_data[96] + ext_call.return_data[64] >= ext_call.return_data[0]:
                            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg1, 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
                        else:
                            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg1, 5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                            require ext_code.size(sub_768450b4Address)
                            staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_768450b4Address)
                            staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
                    else:
                        if 10000 * ext_call.return_data[96] / ext_call.return_data[96] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[224 len 4]
                        if ext_call.return_data[96] + ext_call.return_data[64] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[96] + ext_call.return_data[64]
                        require ext_code.size(sub_3ec4d4d6Address)
                        staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3ec4d4d6Address)
                        if 10000 * ext_call.return_data[96] / ext_call.return_data[96] + ext_call.return_data[64] >= ext_call.return_data[0]:
                            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg1, 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
                        else:
                            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg1, 5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                            require ext_code.size(sub_768450b4Address)
                            staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_768450b4Address)
                            staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
    else:
        if 10000 * ext_call.return_data[32] / ext_call.return_data[32] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 10000 * ext_call.return_data[32] / ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
            require ext_code.size(sub_768450b4Address)
            staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_768450b4Address)
            staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
        else:
            if ext_call.return_data[64] > ext_call.return_data[96]:
                require ext_code.size(sub_768450b4Address)
                staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] + ext_call.return_data[64] < ext_call.return_data[64]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    if ext_call.return_data[96] + ext_call.return_data[64] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[96] + ext_call.return_data[64]
                    require ext_code.size(sub_3ec4d4d6Address)
                    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_3ec4d4d6Address)
                    if 0 / ext_call.return_data[96] + ext_call.return_data[64] >= ext_call.return_data[0]:
                        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg1, 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
                    else:
                        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg1, 5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
                else:
                    if 10000 * ext_call.return_data[64] / ext_call.return_data[64] != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[224 len 4]
                    if ext_call.return_data[96] + ext_call.return_data[64] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[96] + ext_call.return_data[64]
                    require ext_code.size(sub_3ec4d4d6Address)
                    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_3ec4d4d6Address)
                    if 10000 * ext_call.return_data[64] / ext_call.return_data[96] + ext_call.return_data[64] >= ext_call.return_data[0]:
                        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg1, 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
                    else:
                        call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg1, 5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_768450b4Address)
                        staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
            else:
                if ext_call.return_data[64] >= ext_call.return_data[96]:
                    require ext_code.size(sub_3ec4d4d6Address)
                    staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_3ec4d4d6Address)
                    call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg1, 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
                else:
                    require ext_code.size(sub_768450b4Address)
                    staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[96] + ext_call.return_data[64] < ext_call.return_data[64]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[96] + ext_call.return_data[64] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[96] + ext_call.return_data[64]
                        require ext_code.size(sub_3ec4d4d6Address)
                        staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3ec4d4d6Address)
                        if 0 / ext_call.return_data[96] + ext_call.return_data[64] >= ext_call.return_data[0]:
                            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg1, 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
                        else:
                            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg1, 5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                            require ext_code.size(sub_768450b4Address)
                            staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_768450b4Address)
                            staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
                    else:
                        if 10000 * ext_call.return_data[96] / ext_call.return_data[96] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[224 len 4]
                        if ext_call.return_data[96] + ext_call.return_data[64] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[96] + ext_call.return_data[64]
                        require ext_code.size(sub_3ec4d4d6Address)
                        staticcall sub_3ec4d4d6Address.getClaimStatus(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3ec4d4d6Address)
                        if 10000 * ext_call.return_data[96] / ext_call.return_data[96] + ext_call.return_data[64] >= ext_call.return_data[0]:
                            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg1, 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
                        else:
                            call sub_3ec4d4d6Address.setClaimStatus(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg1, 5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
                            require ext_code.size(sub_768450b4Address)
                            staticcall sub_768450b4Address.getVotingQuorumRateX10000() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_768450b4Address)
                            staticcall sub_768450b4Address.getVotingMajorityRateX10000() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0x8d92f6cc: arg1, ext_call.return_data[32 len 96], ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[0]
    stor101 = 1
}



}
