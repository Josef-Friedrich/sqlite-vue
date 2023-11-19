// @ts-ignore
import { parse as parseFlorajs } from './pegjs/florajs.js'

// @ts-ignore
import { parse as parseJoeRe } from './pegjs/joe-re.js'

// @ts-ignore
import { parse as parseParboiledExperiments } from './pegjs/parboiled-experiments.js'

export function parse(input: string): any {
  return parseParboiledExperiments(input)
}
