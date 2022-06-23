contract main {




// =====================  Runtime code  =====================


#
#  - addLiquidityPrivatePool(address arg1, address arg2, uint256 arg3)
#  - addLiquidityPublicPool(address arg1, address arg2, uint256 arg3)
#
const ETH = 0


address owner;
address governanceAddress;
address _wethAddress;

function _governance() {
    return governanceAddress
}

function getGovernance() {
    return governanceAddress
}

function owner() {
    return owner
}

function _weth() {
    return _wethAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setWeth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _wethAddress = arg1
}

function updateGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    governanceAddress = arg1
    emit UpdateGovernance(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeLiquidityPublicPool(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0x366e4fce with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg3, mem[ceil32(return_data.size) + 228 len 28]
    call address(ext_call.return_data[0]).mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'HashflowRouter: H-Token transfer to pool failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'HashflowRouter: H-Token transfer to pool failed'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'HashflowRouter: H-Token transfer to pool failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'HashflowRouter: H-Token transfer to pool failed'
    require ext_code.size(arg1)
    call arg1.removeLiquidity(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeLiquidityPublicPoolWithPermit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, bytes arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0x366e4fce with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 228] = 160
    mem[ceil32(return_data.size) + 260] = arg6.length
    mem[ceil32(return_data.size) + 292 len arg6.length] = arg6[all]
    mem[arg6.length + ceil32(return_data.size) + 292] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    if arg5:
        call address(ext_call.return_data[0]).permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), -1, arg4, Array(len=arg6.length, data=arg6[all])
    else:
        call address(ext_call.return_data[0]).permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3, arg4, Array(len=arg6.length, data=arg6[all])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg3, mem[(2 * ceil32(return_data.size)) + 228 len 28]
    call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'HashflowRouter: H-Token transfer to pool failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'HashflowRouter: H-Token transfer to pool failed'
    else:
        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'HashflowRouter: H-Token transfer to pool failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
            if not mem[(2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'HashflowRouter: H-Token transfer to pool failed'
    require ext_code.size(arg1)
    call arg1.removeLiquidity(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tradeSingleHop(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12, bool arg13, uint8 arg14, bytes32 arg15, bytes arg16) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require 512 <= calldata.size + -arg1 - 4
    require arg1.length == address(arg1.length)
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    require cd[(arg1 + 68)] == address(cd[(arg1 + 68)])
    require cd[(arg1 + 100)] == address(cd[(arg1 + 100)])
    require cd[(arg1 + 132)] == address(cd[(arg1 + 132)])
    require cd[(arg1 + 164)] == address(cd[(arg1 + 164)])
    require cd[(arg1 + 388)] == bool(cd[(arg1 + 388)])
    require cd[(arg1 + 420)] < 3
    require cd[(arg1 + 484)] <= test266151307()
    require arg1 + cd[(arg1 + 484)] + 35 < calldata.size
    require cd[(arg1 + cd[(arg1 + 484)] + 4)] <= test266151307()
    require ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 640 >= 608 and ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 640 <= test266151307()
    require arg1 + cd[(arg1 + 484)] + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 36 <= calldata.size
    mem[640 len cd[(arg1 + cd[(arg1 + 484)] + 4)]] = call.data[arg1 + cd[(arg1 + 484)] + 36 len cd[(arg1 + cd[(arg1 + 484)] + 4)]]
    mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 640] = 0
    if cd[(arg1 + 324)] < block.timestamp:
        revert with 0, 'HashflowRouter: Quote has expired'
    if not cd[(arg1 + 388)]:
        if not address(cd[(arg1 + 132)]):
            if cd[(arg1 + 196)] != msg.value:
                revert with 0, 'HashflowRouter: msgValue must equal effective base token amount'
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 640] = 0x58ca9a5800000000000000000000000000000000000000000000000000000000
            require cd[(arg1 + 420)] < 3
            require ext_code.size(address(arg1.length))
            call address(arg1.length) with:
               value msg.value wei
                 gas gas_remaining wei
                args 32, address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), address(cd[(arg1 + 132)]), address(cd[(arg1 + 164)]), cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], cd[(arg1 + 324)], cd[(arg1 + 356)], bool(cd[(arg1 + 388)]), cd[(arg1 + 420)], cd[(arg1 + 452)], 512, cd[(arg1 + cd[(arg1 + 484)] + 4)], call.data[arg1 + cd[(arg1 + 484)] + 36 len cd[(arg1 + cd[(arg1 + 484)] + 4)]], mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 640 len ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) - cd[(arg1 + cd[(arg1 + 484)] + 4)]]
        else:
            if msg.value:
                revert with 0, 'HashflowRouter: msgValue must be 0 for non eth transfers'
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 676] = msg.sender
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 708] = address(arg1.length)
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 740] = cd[(arg1 + 196)]
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 640] = 100
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 676 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 672 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 772 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])])] = mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 672 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])])]
            if ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])]) > Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])]:
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])] + 772] = 0
            call address(cd[(arg1 + 132)]).mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 772 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 776 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'HashflowRouter: Single hop token transfer from sender to pool failed'
                if arg1.length:
                    require arg1.length >= 32
                    require cd[(arg1 + 36)] == bool(cd[(arg1 + 36)])
                    if not cd[(arg1 + 36)]:
                        revert with 0, 'HashflowRouter: Single hop token transfer from sender to pool failed'
            else:
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'HashflowRouter: Single hop token transfer from sender to pool failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 804] == bool(mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 804])
                    if not mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 804]:
                        revert with 0, 'HashflowRouter: Single hop token transfer from sender to pool failed'
            require cd[(arg1 + 420)] < 3
            require ext_code.size(address(arg1.length))
            call address(arg1.length).0x58ca9a58 with:
               value msg.value wei
                 gas gas_remaining wei
                args 32, address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), address(cd[(arg1 + 132)]), address(cd[(arg1 + 164)]), cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], cd[(arg1 + 324)], cd[(arg1 + 356)], bool(cd[(arg1 + 388)]), cd[(arg1 + 420)], cd[(arg1 + 452)], 512, cd[(arg1 + cd[(arg1 + 484)] + 4)], call.data[arg1 + cd[(arg1 + 484)] + 36 len cd[(arg1 + cd[(arg1 + 484)] + 4)]], mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 640 len ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) - cd[(arg1 + cd[(arg1 + 484)] + 4)]]
    else:
        if address(cd[(arg1 + 132)]):
            if not address(cd[(arg1 + 132)]):
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 640] = 0x1e6023d000000000000000000000000000000000000000000000000000000000
                require cd[(arg1 + 420)] < 3
                require ext_code.size(address(arg1.length))
                call address(arg1.length) with:
                     gas gas_remaining wei
                    args 64, _wethAddress, address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), address(cd[(arg1 + 132)]), address(cd[(arg1 + 164)]), cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], cd[(arg1 + 324)], cd[(arg1 + 356)], bool(cd[(arg1 + 388)]), cd[(arg1 + 420)], cd[(arg1 + 452)], 512, cd[(arg1 + cd[(arg1 + 484)] + 4)], call.data[arg1 + cd[(arg1 + 484)] + 36 len cd[(arg1 + cd[(arg1 + 484)] + 4)]], mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 640 len ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) - cd[(arg1 + cd[(arg1 + 484)] + 4)]]
            else:
                if msg.value:
                    revert with 0, 'HashflowRouter: msgValue must be 0 for non eth transfers'
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 676] = msg.sender
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 708] = address(cd[(arg1 + 36)])
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 740] = cd[(arg1 + 196)]
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 640] = 100
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 676 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 672 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 772 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])])] = mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 672 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])])]
                if ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])]) > Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])]:
                    mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])] + 772] = 0
                call address(cd[(arg1 + 132)]).mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 772 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 776 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'HashflowRouter: Single hop token transfer from sender to eoa failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require cd[(arg1 + 36)] == bool(cd[(arg1 + 36)])
                        if not cd[(arg1 + 36)]:
                            revert with 0, 'HashflowRouter: Single hop token transfer from sender to eoa failed'
                else:
                    mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'HashflowRouter: Single hop token transfer from sender to eoa failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 804] == bool(mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 804])
                        if not mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 804]:
                            revert with 0, 'HashflowRouter: Single hop token transfer from sender to eoa failed'
                require cd[(arg1 + 420)] < 3
                require ext_code.size(address(arg1.length))
                call address(arg1.length).0x1e6023d0 with:
                     gas gas_remaining wei
                    args 64, _wethAddress, address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), address(cd[(arg1 + 132)]), address(cd[(arg1 + 164)]), cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], cd[(arg1 + 324)], cd[(arg1 + 356)], bool(cd[(arg1 + 388)]), cd[(arg1 + 420)], cd[(arg1 + 452)], 512, cd[(arg1 + cd[(arg1 + 484)] + 4)], call.data[arg1 + cd[(arg1 + 484)] + 36 len cd[(arg1 + cd[(arg1 + 484)] + 4)]], mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 640 len ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) - cd[(arg1 + cd[(arg1 + 484)] + 4)]]
        else:
            if cd[(arg1 + 196)] != msg.value:
                revert with 0, 'HashflowRouter: msgValue must equal effective base token amount'
            require ext_code.size(_wethAddress)
            call _wethAddress.deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 676] = address(cd[(arg1 + 36)])
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 708] = cd[(arg1 + 196)]
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 640] = 68
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 676 len 28] = address(cd[(arg1 + 36)]) << 64
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 672 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 740 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])])] = mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 672 len ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])])]
            if ceil32(Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])]) > Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])]:
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])] + 740] = 0
            call _wethAddress.mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 740 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 744 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + cd[(arg1 + cd[(arg1 + 484)] + 4)] + 32, 0, 0), mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 672 len -cd[(arg1 + cd[(arg1 + 484)] + 4)] + ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)])] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'HashflowRouter: Weth transfer to EOA failed'
                if arg1.length:
                    require arg1.length >= 32
                    require cd[(arg1 + 36)] == bool(cd[(arg1 + 36)])
                    if not cd[(arg1 + 36)]:
                        revert with 0, 'HashflowRouter: Weth transfer to EOA failed'
            else:
                mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'HashflowRouter: Weth transfer to EOA failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 772] == bool(mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 772])
                    if not mem[ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) + 772]:
                        revert with 0, 'HashflowRouter: Weth transfer to EOA failed'
            require cd[(arg1 + 420)] < 3
            require ext_code.size(address(arg1.length))
            call address(arg1.length).0x1e6023d0 with:
                 gas gas_remaining wei
                args 64, _wethAddress, address(arg1.length), address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), address(cd[(arg1 + 132)]), address(cd[(arg1 + 164)]), cd[(arg1 + 196)], cd[(arg1 + 228)], cd[(arg1 + 260)], cd[(arg1 + 292)], cd[(arg1 + 324)], cd[(arg1 + 356)], bool(cd[(arg1 + 388)]), cd[(arg1 + 420)], cd[(arg1 + 452)], 512, cd[(arg1 + cd[(arg1 + 484)] + 4)], call.data[arg1 + cd[(arg1 + 484)] + 36 len cd[(arg1 + cd[(arg1 + 484)] + 4)]], mem[cd[(arg1 + cd[(arg1 + 484)] + 4)] + 640 len ceil32(cd[(arg1 + cd[(arg1 + 484)] + 4)]) - cd[(arg1 + cd[(arg1 + 484)] + 4)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
