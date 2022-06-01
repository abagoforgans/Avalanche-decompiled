contract main {




// =====================  Runtime code  =====================


#
#  - stake(uint256 arg1, address arg2)
#
address owner;
address pendingOwner;
address sub_c37ad011Address;
address ampAddress;
address sub_44040d8eAddress;
address sub_9fed53c0Address;
address stakingHelperAddress;
uint256 epoch;
uint256 stor8;
uint32 stor9;
uint32 stor9; offset 32
address distributorAddress;
uint256 totalBonus;
address warmupContractAddress;
uint256 warmupPeriod;
mapping of struct warmupInfo;
mapping of struct sub_ff481272;
uint8 stor16;
uint256 stor16;

function sub_44040d8e(?) payable {
    return sub_44040d8eAddress
}

function Amp() payable {
    return ampAddress
}

function warmupInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return warmupInfo[arg1].field_0, warmupInfo[arg1].field_256, warmupInfo[arg1].field_512, bool(warmupInfo[arg1].field_768)
}

function getEpoch() payable {
    return epoch
}

function stakingHelper() payable {
    return stakingHelperAddress
}

function owner() payable {
    return owner
}

function sub_9500ce9a(?) payable {
    return bool(uint8(stor16))
}

function sub_9fed53c0(?) payable {
    return sub_9fed53c0Address
}

function totalBonus() payable {
    return totalBonus
}

function distributor() payable {
    return distributorAddress
}

function sub_c37ad011(?) payable {
    return sub_c37ad011Address
}

function warmupPeriod() payable {
    return warmupPeriod
}

function pendingOwner() payable {
    return pendingOwner
}

function warmupContract() payable {
    return warmupContractAddress
}

function sub_ff481272(?) payable {
    require calldata.size - 4 >= 32
    return sub_ff481272[arg1].field_0, bool(sub_ff481272[arg1].field_256)
}

function _fallback() payable {
    revert
}

function epoch() payable {
    return epoch, stor8, uint32(stor9.field_0), uint32(stor9.field_32)
}

function sub_902f4dc4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    sub_9fed53c0Address = arg1
}

function sub_c2ba1701(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    sub_44040d8eAddress = arg1
}

function sub_974e8a82(?) payable {
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    uint256(stor16) = not uint8(stor16) or Mask(248, 8, uint256(stor16))
}

function setWarmup(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    warmupPeriod = arg1
    emit 0x538aaeb1: arg1
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable: caller != pending owner'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function toggleDepositLock() payable {
    warmupInfo[msg.sender].field_768 = not warmupInfo[msg.sender].field_768 or Mask(248, 8, warmupInfo[msg.sender].field_768)
    emit 0x84980d6c: bool(uint8(not warmupInfo[msg.sender].field_768)), msg.sender
}

function sub_1d7f64d9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not arg1:
        revert with 0, 'Zero address unacceptable'
    stakingHelperAddress = arg1
}

function index() payable {
    require ext_code.size(ampAddress)
    staticcall ampAddress.0x2986c0e5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1, bool arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not arg2:
        pendingOwner = arg1
    else:
        if not arg1:
            if not arg3:
                revert with 0, 'Ownable: zero address'
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
        pendingOwner = 0
}

function contractBalance() payable {
    require ext_code.size(sub_c37ad011Address)
    staticcall sub_c37ad011Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + totalBonus >= ext_call.return_data[0]
    return (ext_call.return_data[0] + totalBonus)
}

function setContract(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    require arg1 <= 1
    if not arg1:
        distributorAddress = arg2
    else:
        require arg1 <= 1
        if arg1 == 1:
            if warmupContractAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe5761726d75702063616e6e6f7420626520736574206d6f7265207468616e206f6e63,
                            mem[199 len 29]
            warmupContractAddress = arg2
    require arg1 <= 1
    emit 0x74a3f47e: arg1, arg2
}

function sub_f73587f7(?) payable {
    require calldata.size - 4 >= 32
    if not sub_ff481272[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x724d757374207374616b6520746f20626520656c696769626c6520666f722046564f,
                    mem[198 len 30]
    if epoch > sub_ff481272[address(arg1)].field_0:
        if sub_ff481272[address(arg1)].field_256:
            require ext_code.size(sub_44040d8eAddress)
            call sub_44040d8eAddress.0x1de1972c with:
                 gas gas_remaining wei
                args address(arg1), sub_ff481272[address(arg1)].field_0, epoch
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_ff481272[address(arg1)].field_0 = epoch
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    if warmupInfo[address(arg1)].field_512 <= epoch:
        if warmupInfo[address(arg1)].field_512:
            warmupInfo[address(arg1)].field_0 = 0
            warmupInfo[address(arg1)].field_256 = 0
            warmupInfo[address(arg1)].field_512 = 0
            warmupInfo[address(arg1)].field_768 = 0
            require ext_code.size(ampAddress)
            staticcall ampAddress.0x7965d56d with:
                    gas gas_remaining wei
                   args warmupInfo[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(warmupContractAddress)
            call warmupContractAddress.retrieve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LogClaim(ext_call.return_data[0], arg1);
}

function rebase() payable {
    if uint32(stor9.field_32) <= uint32(block.timestamp):
        require ext_code.size(ampAddress)
        call ampAddress.rebase(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor8, epoch
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint32(uint32(stor9.field_32) + uint32(stor9.field_0)) >= uint32(stor9.field_32)
        uint32(stor9.field_32) = uint32(uint32(stor9.field_32) + uint32(stor9.field_0))
        epoch++
        if distributorAddress:
            require ext_code.size(distributorAddress)
            call distributorAddress.distribute() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(sub_c37ad011Address)
        staticcall sub_c37ad011Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + totalBonus >= ext_call.return_data[0]
        require ext_code.size(ampAddress)
        staticcall ampAddress.0x9358928b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + totalBonus <= ext_call.return_data[0]:
            stor8 = 0
        else:
            require -ext_call.return_data[0] <= 0
            stor8 = totalBonus
        emit LogRebase(stor8);
}

function forfeit() payable {
    warmupInfo[msg.sender].field_0 = 0
    warmupInfo[msg.sender].field_256 = 0
    warmupInfo[msg.sender].field_512 = 0
    warmupInfo[msg.sender].field_768 = 0
    require ext_code.size(ampAddress)
    staticcall ampAddress.0x7965d56d with:
            gas gas_remaining wei
           args warmupInfo[msg.sender].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(warmupContractAddress)
    call warmupContractAddress.retrieve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_code.size(sub_c37ad011Address):
        revert with 0, 'Address: call to non-contract'
    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, warmupInfo[msg.sender].field_32
    call sub_c37ad011Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args warmupInfo[msg.sender].field_0, mem[580 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[548]:
                revert with 0, 
                            32,
                            42,
                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 627 len 22]
    emit 0xed3bd883: ext_call.return_data[0], warmupInfo[msg.sender].field_0, msg.sender
}

function unstake(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_ff481272[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x724d757374207374616b6520746f20626520656c696769626c6520666f722046564f,
                    mem[198 len 30]
    if epoch <= sub_ff481272[address(msg.sender)].field_0:
        if not arg2:
            if not ext_code.size(ampAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call ampAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                require ext_code.size(ampAddress)
                staticcall ampAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    sub_ff481272[msg.sender].field_256 = 0
                if not ext_code.size(sub_c37ad011Address):
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                call sub_c37ad011Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args arg1, mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_ff481272[msg.sender].field_256 = 0
                    if not ext_code.size(sub_c37ad011Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                    call sub_c37ad011Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if not ext_code.size(sub_c37ad011Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call sub_c37ad011Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        sub_ff481272[msg.sender].field_256 = 0
                        if not ext_code.size(sub_c37ad011Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call sub_c37ad011Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
        else:
            if uint32(stor9.field_32) > uint32(block.timestamp):
                if not ext_code.size(ampAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call ampAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_ff481272[msg.sender].field_256 = 0
                    if not ext_code.size(sub_c37ad011Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                    call sub_c37ad011Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args arg1, mem[392 len 24], 0, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                    else:
                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
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
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_ff481272[msg.sender].field_256 = 0
                    if not ext_code.size(sub_c37ad011Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                    call sub_c37ad011Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require ext_code.size(ampAddress)
                call ampAddress.rebase(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, epoch
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint32(uint32(stor9.field_32) + uint32(stor9.field_0)) >= uint32(stor9.field_32)
                uint32(stor9.field_32) = uint32(uint32(stor9.field_32) + uint32(stor9.field_0))
                epoch++
                if not distributorAddress:
                    require ext_code.size(sub_c37ad011Address)
                    staticcall sub_c37ad011Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + totalBonus >= ext_call.return_data[0]
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x9358928b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + totalBonus <= ext_call.return_data[0]:
                        stor8 = 0
                        emit LogRebase(stor8);
                        if not ext_code.size(ampAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call ampAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[392 len 24], 0, mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    if not ext_code.size(sub_c37ad011Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                    call sub_c37ad011Address with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    sub_ff481272[msg.sender].field_256 = 0
                                    if not ext_code.size(sub_c37ad011Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                    call sub_c37ad011Address with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    else:
                        require -ext_call.return_data[0] <= 0
                        stor8 = totalBonus
                        emit LogRebase(stor8);
                        if not ext_code.size(ampAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call ampAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[392 len 24], 0, mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                else:
                    require ext_code.size(distributorAddress)
                    call distributorAddress.distribute() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c37ad011Address)
                    staticcall sub_c37ad011Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + totalBonus >= ext_call.return_data[0]
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x9358928b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + totalBonus <= ext_call.return_data[0]:
                        stor8 = 0
                        emit LogRebase(stor8);
                        if not ext_code.size(ampAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call ampAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[392 len 24], 0, mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    if not ext_code.size(sub_c37ad011Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                    call sub_c37ad011Address with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                else:
                                    sub_ff481272[msg.sender].field_256 = 0
                                    if not ext_code.size(sub_c37ad011Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                    call sub_c37ad011Address with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require -ext_call.return_data[0] <= 0
                        stor8 = totalBonus
                        emit LogRebase(stor8);
                        if not ext_code.size(ampAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call ampAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[392 len 24], 0, mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
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
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if not sub_ff481272[address(msg.sender)].field_256:
            if not arg2:
                if not ext_code.size(ampAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call ampAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_ff481272[msg.sender].field_256 = 0
                    if not ext_code.size(sub_c37ad011Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                    call sub_c37ad011Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args arg1, mem[392 len 24], 0, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                    else:
                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
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
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_ff481272[msg.sender].field_256 = 0
                    if not ext_code.size(sub_c37ad011Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                    call sub_c37ad011Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if uint32(stor9.field_32) > uint32(block.timestamp):
                    if not ext_code.size(ampAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call ampAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(ampAddress)
                        staticcall ampAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            sub_ff481272[msg.sender].field_256 = 0
                        if not ext_code.size(sub_c37ad011Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call sub_c37ad011Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[392 len 24], 0, mem[520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                        else:
                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[488]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                else:
                    require ext_code.size(ampAddress)
                    call ampAddress.rebase(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, epoch
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint32(uint32(stor9.field_32) + uint32(stor9.field_0)) >= uint32(stor9.field_32)
                    uint32(stor9.field_32) = uint32(uint32(stor9.field_32) + uint32(stor9.field_0))
                    epoch++
                    if not distributorAddress:
                        require ext_code.size(sub_c37ad011Address)
                        staticcall sub_c37ad011Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + totalBonus >= ext_call.return_data[0]
                        require ext_code.size(ampAddress)
                        staticcall ampAddress.0x9358928b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + totalBonus <= ext_call.return_data[0]:
                            stor8 = 0
                        else:
                            require -ext_call.return_data[0] <= 0
                            stor8 = totalBonus
                        emit LogRebase(stor8);
                        if not ext_code.size(ampAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call ampAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[392 len 24], 0, mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
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
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require ext_code.size(distributorAddress)
                        call distributorAddress.distribute() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c37ad011Address)
                        staticcall sub_c37ad011Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + totalBonus >= ext_call.return_data[0]
                        require ext_code.size(ampAddress)
                        staticcall ampAddress.0x9358928b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + totalBonus <= ext_call.return_data[0]:
                            stor8 = 0
                            emit LogRebase(stor8);
                            if not ext_code.size(ampAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call ampAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[392 len 24], 0, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(ampAddress)
                                    staticcall ampAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if not ext_code.size(sub_c37ad011Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                        call sub_c37ad011Address with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    else:
                                        sub_ff481272[msg.sender].field_256 = 0
                                        if not ext_code.size(sub_c37ad011Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                        call sub_c37ad011Address with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                    require ext_code.size(ampAddress)
                                    staticcall ampAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        sub_ff481272[msg.sender].field_256 = 0
                                    if not ext_code.size(sub_c37ad011Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                    call sub_c37ad011Address with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require -ext_call.return_data[0] <= 0
                            stor8 = totalBonus
                            emit LogRebase(stor8);
                            if not ext_code.size(ampAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call ampAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[392 len 24], 0, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(ampAddress)
                                    staticcall ampAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if not ext_code.size(sub_c37ad011Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                        call sub_c37ad011Address with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    else:
                                        sub_ff481272[msg.sender].field_256 = 0
                                        if not ext_code.size(sub_c37ad011Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                        call sub_c37ad011Address with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                    require ext_code.size(ampAddress)
                                    staticcall ampAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        sub_ff481272[msg.sender].field_256 = 0
                                    if not ext_code.size(sub_c37ad011Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                    call sub_c37ad011Address with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require ext_code.size(sub_44040d8eAddress)
            call sub_44040d8eAddress.0x1de1972c with:
                 gas gas_remaining wei
                args msg.sender, sub_ff481272[address(msg.sender)].field_0, epoch
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_ff481272[address(msg.sender)].field_0 = epoch
            if not arg2:
                if not ext_code.size(ampAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call ampAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(ampAddress)
                    staticcall ampAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_ff481272[msg.sender].field_256 = 0
                    if not ext_code.size(sub_c37ad011Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                    call sub_c37ad011Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args arg1, mem[392 len 24], 0, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                    else:
                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(ampAddress)
                        staticcall ampAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            sub_ff481272[msg.sender].field_256 = 0
                        if not ext_code.size(sub_c37ad011Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call sub_c37ad011Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                        require ext_code.size(ampAddress)
                        staticcall ampAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                        else:
                            sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if uint32(stor9.field_32) > uint32(block.timestamp):
                    if not ext_code.size(ampAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call ampAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(ampAddress)
                        staticcall ampAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            sub_ff481272[msg.sender].field_256 = 0
                        if not ext_code.size(sub_c37ad011Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call sub_c37ad011Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[392 len 24], 0, mem[520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                        else:
                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[488]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                            else:
                                sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(ampAddress)
                            staticcall ampAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                sub_ff481272[msg.sender].field_256 = 0
                            if not ext_code.size(sub_c37ad011Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call sub_c37ad011Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require ext_code.size(ampAddress)
                    call ampAddress.rebase(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, epoch
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint32(uint32(stor9.field_32) + uint32(stor9.field_0)) >= uint32(stor9.field_32)
                    uint32(stor9.field_32) = uint32(uint32(stor9.field_32) + uint32(stor9.field_0))
                    epoch++
                    if not distributorAddress:
                        require ext_code.size(sub_c37ad011Address)
                        staticcall sub_c37ad011Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + totalBonus >= ext_call.return_data[0]
                        require ext_code.size(ampAddress)
                        staticcall ampAddress.0x9358928b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + totalBonus <= ext_call.return_data[0]:
                            stor8 = 0
                            emit LogRebase(stor8);
                            if not ext_code.size(ampAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call ampAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[392 len 24], 0, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(ampAddress)
                                    staticcall ampAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        sub_ff481272[msg.sender].field_256 = 0
                                    if not ext_code.size(sub_c37ad011Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                    call sub_c37ad011Address with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                    require ext_code.size(ampAddress)
                                    staticcall ampAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if not ext_code.size(sub_c37ad011Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                        call sub_c37ad011Address with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    else:
                                        sub_ff481272[msg.sender].field_256 = 0
                                        if not ext_code.size(sub_c37ad011Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                        call sub_c37ad011Address with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require -ext_call.return_data[0] <= 0
                            stor8 = totalBonus
                            emit LogRebase(stor8);
                            if not ext_code.size(ampAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call ampAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[392 len 24], 0, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
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
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require ext_code.size(distributorAddress)
                        call distributorAddress.distribute() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c37ad011Address)
                        staticcall sub_c37ad011Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + totalBonus >= ext_call.return_data[0]
                        require ext_code.size(ampAddress)
                        staticcall ampAddress.0x9358928b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + totalBonus <= ext_call.return_data[0]:
                            stor8 = 0
                            emit LogRebase(stor8);
                            if not ext_code.size(ampAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call ampAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[392 len 24], 0, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
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
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require -ext_call.return_data[0] <= 0
                            stor8 = totalBonus
                            emit LogRebase(stor8);
                            if not ext_code.size(ampAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call ampAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(ampAddress)
                                staticcall ampAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    sub_ff481272[msg.sender].field_256 = 0
                                if not ext_code.size(sub_c37ad011Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call sub_c37ad011Address with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[392 len 24], 0, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    require ext_code.size(ampAddress)
                                    staticcall ampAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        sub_ff481272[msg.sender].field_256 = 0
                                    if not ext_code.size(sub_c37ad011Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                    call sub_c37ad011Address with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                else:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                    require ext_code.size(ampAddress)
                                    staticcall ampAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if not ext_code.size(sub_c37ad011Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                        call sub_c37ad011Address with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    else:
                                        sub_ff481272[msg.sender].field_256 = 0
                                        if not ext_code.size(sub_c37ad011Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                        call sub_c37ad011Address with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x525361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    emit LogUnstake(arg1, msg.sender);
}



}
