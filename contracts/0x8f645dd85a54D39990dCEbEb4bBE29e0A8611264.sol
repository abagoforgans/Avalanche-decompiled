contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
array of struct users;
mapping of uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < users.length
    return users[arg1].field_0
}

function owner() payable {
    return owner
}

function geUnlockTime() payable {
    return geUnlockTime
}

function sub_d7b8ada0(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
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

function setGasLimits(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
    stor6 = arg2
    stor7 = arg3
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cashout() payable {
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    require ext_code.size(0x44889bcfcc89e251fcdafe8ded1cb740877ddc31)
    staticcall 0x44889bcfcc89e251fcdafe8ded1cb740877ddc31._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUsers() payable {
    if not users.length:
        mem[(32 * users.length) + 128] = 32
        mem[(32 * users.length) + 160] = users.length
        mem[(32 * users.length) + 192 len floor32(users.length)] = mem[128 len floor32(users.length)]
        return memory
          from (32 * users.length) + 128
           len (96 * users.length) + 64
    mem[128] = address(users.field_0)
    idx = 128
    s = 0
    while (32 * users.length) + 96 > idx:
        mem[idx + 32] = users[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * users.length) + 192 len floor32(users.length)] = mem[128 len floor32(users.length)]
    return Array(len=users.length, data=mem[128 len floor32(users.length)], mem[(32 * users.length) + floor32(users.length) + 192 len (32 * users.length) - floor32(users.length)]), 
}

function sub_aa4a7080(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < users.length:
        mem[0] = users[idx].field_0
        mem[32] = 4
        stor4[stor3[idx].field_0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    users.length = arg1.length
    if not arg1.length:
        idx = 0
        while users.length > idx:
            users[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            users[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while users.length > idx:
            users[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function liquidate() payable {
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe7546fb8809e467c835a723e06f17564760875ff)
    staticcall 0xe7546fb8809e467c835a723e06f17564760875ff.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe7546fb8809e467c835a723e06f17564760875ff, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(0xe7546fb8809e467c835a723e06f17564760875ff)
    call 0xe7546fb8809e467c835a723e06f17564760875ff.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1689e98b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 4
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    if arg1 + arg2 >= gas_remaining:
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.mem[var23003 len 4] with:
            gas gas_remaining wei
           args mem[var23003 + 4 len var23004 - 4]
    mem[var23005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not var29001:
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.mem[var33003 len 4] with:
            gas gas_remaining wei
           args mem[var33003 + 4 len var33004 - 4]
    mem[var33005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    if arg3 > mem[var37002]:
        call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
             gas gas_remaining wei
            args mem[var37002]
    else:
        call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
             gas gas_remaining wei
            args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 + arg2 >= gas_remaining:
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
            gas gas_remaining wei
           args 0x71840aae9db76ab03e838993e459cb29388c16d0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
    mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
            gas gas_remaining wei
           args 0x71840aae9db76ab03e838993e459cb29388c16d0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    var37002 = 96
    continue 
}

function sub_c11da57e(?) payable {
    mem[64] = 96
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    require ext_code.size(0x44889bcfcc89e251fcdafe8ded1cb740877ddc31)
    staticcall 0x44889bcfcc89e251fcdafe8ded1cb740877ddc31._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = msg.sender
    mem[32] = 4
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    if stor5 + stor7 >= gas_remaining:
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.mem[var27003 len 4] with:
            gas gas_remaining wei
           args mem[var27003 + 4 len var27004 - 4]
    mem[var27005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not var33001:
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.mem[var37003 len 4] with:
            gas gas_remaining wei
           args mem[var37003 + 4 len var37004 - 4]
    mem[var37005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    if ext_call.return_data[0] > mem[var41002]:
        call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
             gas gas_remaining wei
            args mem[var41002]
    else:
        call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5 + stor7 >= gas_remaining:
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
            gas gas_remaining wei
           args 0x71840aae9db76ab03e838993e459cb29388c16d0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
    mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
            gas gas_remaining wei
           args 0x71840aae9db76ab03e838993e459cb29388c16d0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    var41002 = 96
    continue 
}

function sub_c15aab71(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    mem[0] = msg.sender
    mem[32] = 4
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    if arg1 + arg2 + arg3 < gas_remaining:
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
        require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
        staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.mem[var23003 len 4] with:
                gas gas_remaining wei
               args mem[var23003 + 4 len var23004 - 4]
        mem[var23005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var29001:
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
            require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
            staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.mem[var33003 len 4] with:
                    gas gas_remaining wei
                   args mem[var33003 + 4 len var33004 - 4]
            mem[var33005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
            if arg4 > mem[var37002]:
                call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
                     gas gas_remaining wei
                    args mem[var37002]
            else:
                call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
                     gas gas_remaining wei
                    args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 + arg2 + arg3 < gas_remaining:
                require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
                staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
                        gas gas_remaining wei
                       args 0x71840aae9db76ab03e838993e459cb29388c16d0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
                    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
                    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
                            gas gas_remaining wei
                           args 0x71840aae9db76ab03e838993e459cb29388c16d0
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    var37002 = 96
                    continue 
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe7546fb8809e467c835a723e06f17564760875ff)
    staticcall 0xe7546fb8809e467c835a723e06f17564760875ff.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe7546fb8809e467c835a723e06f17564760875ff, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(0xe7546fb8809e467c835a723e06f17564760875ff)
    call 0xe7546fb8809e467c835a723e06f17564760875ff.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_10477d07(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    mem[0] = msg.sender
    mem[32] = 4
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    if stor5 + stor6 + stor7 < gas_remaining:
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
        require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
        staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.mem[var25003 len 4] with:
                gas gas_remaining wei
               args mem[var25003 + 4 len var25004 - 4]
        mem[var25005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var31001:
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
            require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
            staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.mem[var35003 len 4] with:
                    gas gas_remaining wei
                   args mem[var35003 + 4 len var35004 - 4]
            mem[var35005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
            if arg1 > mem[var39002]:
                call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
                     gas gas_remaining wei
                    args mem[var39002]
            else:
                call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x3655af8c with:
                     gas gas_remaining wei
                    args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor5 + stor6 + stor7 < gas_remaining:
                require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
                staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
                        gas gas_remaining wei
                       args 0x71840aae9db76ab03e838993e459cb29388c16d0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    mem[100] = 0x71840aae9db76ab03e838993e459cb29388c16d0
                    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
                    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
                            gas gas_remaining wei
                           args 0x71840aae9db76ab03e838993e459cb29388c16d0
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    var39002 = 96
                    continue 
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    staticcall 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe7546fb8809e467c835a723e06f17564760875ff)
    staticcall 0xe7546fb8809e467c835a723e06f17564760875ff.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9867cc2419fb317e986a648e02cf7c35aa87a336)
    call 0x9867cc2419fb317e986a648e02cf7c35aa87a336.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe7546fb8809e467c835a723e06f17564760875ff, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(0xe7546fb8809e467c835a723e06f17564760875ff)
    call 0xe7546fb8809e467c835a723e06f17564760875ff.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
