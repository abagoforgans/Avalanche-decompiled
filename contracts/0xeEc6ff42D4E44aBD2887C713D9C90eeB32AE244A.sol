contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address USDAddress;
address DAIAddress;
address sub_38afa5c2Address;
address sub_bfa2ca73Address;
address sub_8a5df7ebAddress;
uint32 stor7;
address DAOAddress;
uint256 price;
uint256 sub_f92842d3;
uint256 cap;
uint256 sub_c5b34435;
uint256 sub_1252af75;
uint256 sub_e93ed224;
uint256 totalDebt;
uint8 started;
uint8 ended; offset 8
uint8 claimable; offset 16
uint8 contractPaused; offset 24
uint256 stor15; offset 24
uint256 stor15; offset 16
uint256 stor15; offset 8
mapping of struct userInfo;
mapping of struct sub_cb3119bd;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of uint256 sub_7ac68315;

function sub_1252af75(?) payable {
    return sub_1252af75
}

function ended() payable {
    return bool(ended)
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, bool(userInfo[arg1].field_512)
}

function USD() payable {
    return USDAddress
}

function started() payable {
    return bool(started)
}

function cap() payable {
    return cap
}

function sub_38afa5c2(?) payable {
    return sub_38afa5c2Address
}

function sub_7ac68315(?) payable {
    require calldata.size - 4 >= 32
    return sub_7ac68315[arg1]
}

function sub_8a5df7eb(?) payable {
    return sub_8a5df7ebAddress
}

function contractPaused() payable {
    return bool(contractPaused)
}

function owner() payable {
    return owner
}

function DAO() payable {
    return address(DAOAddress)
}

function sub_9a60fd14(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function price() payable {
    return price
}

function claimable() payable {
    return bool(claimable)
}

function sub_bfa2ca73(?) payable {
    return sub_bfa2ca73Address
}

function sub_c5b34435(?) payable {
    return sub_c5b34435
}

function sub_cb3119bd(?) payable {
    require calldata.size - 4 >= 32
    return sub_cb3119bd[arg1].field_0, 
           sub_cb3119bd[arg1].field_256,
           sub_cb3119bd[arg1].field_512,
           bool(sub_cb3119bd[arg1].field_768)
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function DAI() payable {
    return DAIAddress
}

function sub_e93ed224(?) payable {
    return sub_e93ed224
}

function sub_f92842d3(?) payable {
    return sub_f92842d3
}

function totalDebt() payable {
    return totalDebt
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function sub_22bb5cf0(?) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)].field_0 > cap:
        revert with 0, 'SafeMath: subtraction overflow'
    return (cap - userInfo[address(arg1)].field_0)
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor15.field_24) = Mask(232, 0, not bool(contractPaused))
    return bool(contractPaused)
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        revert with 0, 'Sale has already started'
    started = 1
    emit SaleStarted(block.number);
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        revert with 0, 'Sale has already started'
    stor18[address(arg1)] = 0
}

function end() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not started:
        revert with 0, 'Sale has not started'
    if ended:
        revert with 0, 'Sale has already ended'
    Mask(248, 0, stor15.field_8) = 1
    emit SaleEnded(block.number);
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(owner, stor1);
    owner = stor1
}

function addTeam(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        revert with 0, 'Sale has already started'
    if not arg2:
        revert with 0, 'cannot set zero whitelists'
    stor19[address(arg1)] = 1
    sub_cb3119bd[address(arg1)].field_0 = arg2
}

function removeTeam(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        revert with 0, 'Sale has already started'
    stor19[address(arg1)] = 0
    sub_cb3119bd[address(arg1)].field_0 = 0
    sub_cb3119bd[address(arg1)].field_256 = 0
    sub_cb3119bd[address(arg1)].field_512 = 0
    sub_cb3119bd[address(arg1)].field_768 = 0
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(owner, arg1);
    stor1 = arg1
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        if not contractPaused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0xfe53616c652068617320616c7265616479207374617274656420616e6420636f6e7472616374206e6f74207061757365,
                        mem[212 len 16]
    stor18[address(arg1)] = 1
}

function sub_80fbd162(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ended:
        revert with 0, 'Sale has not ended'
    if claimable:
        revert with 0, 'Claim has already been unlocked'
    require ext_code.size(sub_8a5df7ebAddress)
    staticcall sub_8a5df7ebAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalDebt:
        revert with 0, 'not enough ZRST in contract'
    Mask(240, 0, stor15.field_16) = 1
    emit 0xd82fec69: block.number
}

function sub_72941316(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        if not contractPaused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0xfe53616c652068617320616c7265616479207374617274656420616e6420636f6e7472616374206e6f74207061757365,
                        mem[212 len 16]
    if ('cd', 4).length > 333:
        revert with 0, 'too many addresses'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 18
        stor18[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function adminWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit AdminWithdrawal(address(arg1), arg2);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if contractPaused:
        revert with 0, 'contract is paused'
    if not claimable:
        revert with 0, 'ZeroShift is not yet claimable'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x645f616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[197 len 31]
    if arg1 > totalDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    totalDebt -= arg1
    require ext_code.size(sub_bfa2ca73Address)
    call sub_bfa2ca73Address.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_code.size(sub_8a5df7ebAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[388 len 0] = 0
    call sub_8a5df7ebAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    emit Mint(sub_38afa5c2Address, arg1, msg.sender);
    emit Withdraw(sub_8a5df7ebAddress, arg1, msg.sender);
}

function sub_bc92afdf(?) payable {
    require calldata.size - 4 >= 32
    if contractPaused:
        revert with 0, 'contract is paused'
    if not started:
        revert with 0, 'Sale has not started'
    if ended:
        revert with 0, 'Sale has ended'
    if bool(stor19[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6c6d73672e73656e646572206973206e6f742077686974656c697374656420746561,
                    mem[198 len 30]
    if sub_cb3119bd[address(msg.sender)].field_256 + arg1 < sub_cb3119bd[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_c5b34435:
        if 0 < sub_cb3119bd[address(msg.sender)].field_256 + arg1:
            revert with 0, 'new amount above team limit'
    else:
        require sub_c5b34435
        if sub_c5b34435 * sub_cb3119bd[address(msg.sender)].field_0 / sub_c5b34435 != sub_cb3119bd[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_c5b34435 * sub_cb3119bd[address(msg.sender)].field_0 < sub_cb3119bd[address(msg.sender)].field_256 + arg1:
            revert with 0, 'new amount above team limit'
    if sub_cb3119bd[address(msg.sender)].field_256 + arg1 < sub_cb3119bd[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    sub_cb3119bd[address(msg.sender)].field_256 += arg1
    if sub_e93ed224 + arg1 < sub_e93ed224:
        revert with 0, 'SafeMath: addition overflow'
    sub_e93ed224 += arg1
    if not arg1:
        if sub_f92842d3 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f92842d3
        if totalDebt + (0 / sub_f92842d3) < totalDebt:
            revert with 0, 'SafeMath: addition overflow'
        totalDebt += 0 / sub_f92842d3
        if ext_code.size(DAIAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call DAIAddress with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
        require ext_code.size(sub_38afa5c2Address)
        call sub_38afa5c2Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / sub_f92842d3
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_f92842d3 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f92842d3
        if totalDebt + (10^18 * arg1 / sub_f92842d3) < totalDebt:
            revert with 0, 'SafeMath: addition overflow'
        totalDebt += 10^18 * arg1 / sub_f92842d3
        if ext_code.size(DAIAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call DAIAddress with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
        require ext_code.size(sub_38afa5c2Address)
        call sub_38afa5c2Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * arg1 / sub_f92842d3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if contractPaused:
        revert with 0, 'contract is paused'
    if not started:
        revert with 0, 'Sale has not started'
    if ended:
        revert with 0, 'Sale has ended'
    if bool(stor18[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x776d73672e73656e646572206973206e6f742077686974656c697374656420757365,
                    mem[198 len 30]
    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if cap < userInfo[address(msg.sender)].field_0 + arg1:
        revert with 0, 'new amount above user limit'
    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[address(msg.sender)].field_0 += arg1
    if sub_1252af75 + arg1 < sub_1252af75:
        revert with 0, 'SafeMath: addition overflow'
    sub_1252af75 += arg1
    if not arg1:
        if price <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price
        if not 0 / price:
            if totalDebt < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            if ext_code.size(USDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = 0
            mem[452 len 0] = 0
            call USDAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            require ext_code.size(sub_38afa5c2Address)
            call sub_38afa5c2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require 0 / price
            if 10^12 * 0 / price / 0 / price != 10^12:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if totalDebt + (10^12 * 0 / price) < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 10^12 * 0 / price
            if ext_code.size(USDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = 0
            mem[452 len 0] = 0
            call USDAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            require ext_code.size(sub_38afa5c2Address)
            call sub_38afa5c2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^12 * 0 / price
    else:
        require arg1
        if 10^6 * arg1 / arg1 != 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if price <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price
        if not 10^6 * arg1 / price:
            if totalDebt < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            if ext_code.size(USDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = 0
            mem[452 len 0] = 0
            call USDAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            require ext_code.size(sub_38afa5c2Address)
            call sub_38afa5c2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require 10^6 * arg1 / price
            if 10^12 * 10^6 * arg1 / price / 10^6 * arg1 / price != 10^12:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if totalDebt + (10^12 * 10^6 * arg1 / price) < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 10^12 * 10^6 * arg1 / price
            if ext_code.size(USDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = 0
            call USDAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            require ext_code.size(sub_38afa5c2Address)
            call sub_38afa5c2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^12 * 10^6 * arg1 / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, msg.sender);
}



}
