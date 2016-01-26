public protocol App {
    func call(req: Request) -> Response
}
