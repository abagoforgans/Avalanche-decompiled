contract main {




// =====================  Runtime code  =====================


address owner;
address masterAddress;
address sub_6f7107eaAddress;
uint256 startTime;
address sub_20469ab8Address;
address sub_42a6b2afAddress;
address wETHAddress;
uint256 sub_44651cb4;
array of struct poolInfo;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint8 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, bool(poolInfo[arg1].field_768)
}

function sub_20469ab8(?) payable {
    return sub_20469ab8Address
}

function sub_42a6b2af(?) payable {
    return sub_42a6b2afAddress
}

function sub_44651cb4(?) payable {
    return sub_44651cb4
}

function sub_6f7107ea(?) payable {
    return sub_6f7107eaAddress
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function master() payable {
    return masterAddress
}

function wETH() payable {
    return wETHAddress
}

function _fallback() payable {
    revert
}

function sub_cf6ebee7(?) payable {
    require calldata.size - 4 >= 32
    return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f03516b1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_44651cb4 = arg1
}

function sub_7e51f30e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require arg1
    sub_6f7107eaAddress = arg1
}

function sub_1894be52(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require arg2 <= 100
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function retireStrat(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require arg1 < poolInfo.length
    require not poolInfo[arg1].field_768
    require ext_code.size(sub_42a6b2afAddress)
    call sub_42a6b2afAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolInfo[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    poolInfo[arg1].field_768 = 1
}

function add(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require arg2 <= 100
    require wETHAddress != arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    stor6E15[stor9.length] = arg2
    stor6E15[stor9.length] = arg3
    stor6E15[stor9.length] = 0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_42a6b2afAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    require arg1 < poolInfo.length
    require ext_code.size(sub_20469ab8Address)
    staticcall sub_20469ab8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not poolInfo[arg1].field_768:
        require ext_code.size(sub_42a6b2afAddress)
        call sub_42a6b2afAddress.withdraw(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args poolInfo[arg1].field_512, arg2, sub_6f7107eaAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] > sub_44651cb4:
        require ext_code.size(sub_20469ab8Address)
        call sub_20469ab8Address.0xa9059cbb with:
             gas gas_remaining wei
            args sub_6f7107eaAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    require arg1 < poolInfo.length
    require not poolInfo[arg1].field_768
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call poolInfo[arg1].field_0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require arg1 < poolInfo.length
    require ext_code.size(sub_20469ab8Address)
    staticcall sub_20469ab8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not poolInfo[arg1].field_768:
        require ext_code.size(sub_42a6b2afAddress)
        call sub_42a6b2afAddress.0x8dbdbe6d with:
             gas gas_remaining wei
            args poolInfo[arg1].field_512, arg2, sub_6f7107eaAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] > sub_44651cb4:
        require ext_code.size(sub_20469ab8Address)
        call sub_20469ab8Address.0xa9059cbb with:
             gas gas_remaining wei
            args sub_6f7107eaAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
